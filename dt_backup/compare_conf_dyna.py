import hcl2
import pandas as pd
from pathlib import Path
from datetime import datetime

NONPROD_PATH = Path("nonprod/terraform/configuration/modules")
PROD_PATH = Path("prod/terraform/configuration/modules")

REPORT_PATH = Path("reports")
REPORT_PATH.mkdir(exist_ok=True)

OUTPUT_FILE = REPORT_PATH / "dynatrace_comparison.xlsx"

def load_tf_file(filepath):
    try:
        with open(filepath, "r", encoding="utf-8") as file:
            return hcl2.load(file)
    except Exception as e:
        print(f"Failed to read {filepath}: {e}")
        return {}

def flatten(obj, parent_key=""):

    items = {}

    if isinstance(obj, dict):

        for key, value in obj.items():

            new_key = (
                f"{parent_key}.{key}"
                if parent_key
                else key
            )

            items.update(
                flatten(value, new_key)
            )

    elif isinstance(obj, list):

        if not obj:
            items[parent_key] = []

        for item in obj:
            items.update(
                flatten(item, parent_key)
            )

    else:

        items[parent_key] = obj

    return items

def extract_resources(tf_data):

    resources = {}

    for resource in tf_data.get("resource", []):

        for resource_type, resource_body in resource.items():

            resources.setdefault(resource_type, {})

            for resource_name, values in resource_body.items():

                resources[resource_type][resource_name] = (
                    flatten(values)
                )

    return resources

def build_file_index(root_dir):

    files = {}

    for tf_file in root_dir.rglob("*.tf"):

        relative_path = tf_file.relative_to(root_dir)

        files[str(relative_path)] = tf_file

    return files

def compare_resources(
    relative_file,
    nonprod_resources,
    prod_resources,
    environment
):

    rows = []

    all_resource_types = (
        set(nonprod_resources.keys()) |
        set(prod_resources.keys())
    )

    for resource_type in all_resource_types:

        np_resource_set = nonprod_resources.get(
            resource_type, {}
        )

        prod_resource_set = prod_resources.get(
            resource_type, {}
        )

        all_resource_names = (
            set(np_resource_set.keys()) |
            set(prod_resource_set.keys())
        )

        for resource_name in all_resource_names:

            np_values = np_resource_set.get(
                resource_name, {}
            )

            prod_values = prod_resource_set.get(
                resource_name, {}
            )

            all_attributes = (
                set(np_values.keys()) |
                set(prod_values.keys())
            )

            for attribute in sorted(all_attributes):

                np_val = np_values.get(
                    attribute,
                    "<MISSING>"
                )

                prod_val = prod_values.get(
                    attribute,
                    "<MISSING>"
                )

                status = (
                    "MATCH"
                    if str(np_val) == str(prod_val)
                    else "DIFFERENT"
                )

                rows.append(
                    {
                        "Environment": environment,
                        "File": relative_file,
                        "Config Type": resource_type,
                        "Resource Name": resource_name,
                        "Attribute": attribute,
                        "NonProd Value": str(np_val),
                        "Prod Value": str(prod_val),
                        "Status": status,
                    }
                )

    return rows

def compare_all_files():

    comparison_rows = []
    file_summary_rows = []

    nonprod_files = build_file_index(
        NONPROD_PATH
    )

    prod_files = build_file_index(
        PROD_PATH
    )

    all_files = (
        set(nonprod_files.keys()) |
        set(prod_files.keys())
    )

    print(
        f"Total Files Found : {len(all_files)}"
    )

    for relative_file in sorted(all_files):

        print(f"Processing : {relative_file}")

        np_file = nonprod_files.get(relative_file)

        prod_file = prod_files.get(relative_file)

        if np_file and not prod_file:

            file_summary_rows.append(
                {
                    "File": relative_file,
                    "NonProd File": "Yes",
                    "Prod File": "No",
                    "Status": "Missing In Prod"
                }
            )

            comparison_rows.append(
                {
                    "Environment": "NonProd",
                    "File": relative_file,
                    "Config Type": "",
                    "Resource Name": "",
                    "Attribute": "<FILE_MISSING>",
                    "NonProd Value": "Exists",
                    "Prod Value": "<MISSING>",
                    "Status": "MISSING_IN_PROD"
                }
            )

            continue

        if prod_file and not np_file:

            file_summary_rows.append(
                {
                    "File": relative_file,
                    "NonProd File": "No",
                    "Prod File": "Yes",
                    "Status": "Missing In NonProd"
                }
            )

            comparison_rows.append(
                {
                    "Environment": "Prod",
                    "File": relative_file,
                    "Config Type": "",
                    "Resource Name": "",
                    "Attribute": "<FILE_MISSING>",
                    "NonProd Value": "<MISSING>",
                    "Prod Value": "Exists",
                    "Status": "MISSING_IN_NONPROD"
                }
            )

            continue

        file_summary_rows.append(
            {
                "File": relative_file,
                "NonProd File": "Yes",
                "Prod File": "Yes",
                "Status": "Compared"
            }
        )

        np_data = load_tf_file(np_file)
        prod_data = load_tf_file(prod_file)

        np_resources = extract_resources(np_data)
        prod_resources = extract_resources(prod_data)

        comparison_rows.extend(
            compare_resources(
                relative_file,
                np_resources,
                prod_resources,
                "Prod/NonProd"
            )
        )

    comparison_df = pd.DataFrame(
        comparison_rows
    )

    file_summary_df = pd.DataFrame(
        file_summary_rows
    )

    return (
        comparison_df,
        file_summary_df
    )

def create_excel_report(
    comparison_df,
    file_summary_df
):

    if comparison_df.empty:

        comparison_df = pd.DataFrame(
            columns=[
                "Environment",
                "File",
                "Config Type",
                "Resource Name",
                "Attribute",
                "NonProd Value",
                "Prod Value",
                "Status"
            ]
        )

    summary_df = (
        comparison_df
        .groupby(["Status"])
        .size()
        .reset_index(name="Count")
    )

    differences_df = comparison_df[
        comparison_df["Status"].str.contains(
            "DIFFERENT|MISSING",
            na=False
        )
    ]

    with pd.ExcelWriter(
        OUTPUT_FILE,
        engine="xlsxwriter"
    ) as writer:

        file_summary_df.to_excel(
            writer,
            sheet_name="File Summary",
            index=False
        )

        summary_df.to_excel(
            writer,
            sheet_name="Summary",
            index=False
        )

        differences_df.to_excel(
            writer,
            sheet_name="Differences Only",
            index=False
        )

        comparison_df.to_excel(
            writer,
            sheet_name="Full Comparison",
            index=False
        )

        workbook = writer.book

        red_format = workbook.add_format(
            {
                "bg_color": "#FFC7CE",
                "font_color": "#9C0006"
            }
        )

        green_format = workbook.add_format(
            {
                "bg_color": "#C6EFCE",
                "font_color": "#006100"
            }
        )

        blue_format = workbook.add_format(
            {
                "bg_color": "#D9EAF7",
                "font_color": "#000000"
            }
        )

        sheet = writer.sheets[
            "Full Comparison"
        ]

        max_row = max(
            len(comparison_df) + 10,
            100
        )

        sheet.conditional_format(
            f"H2:H{max_row}",
            {
                "type": "text",
                "criteria": "containing",
                "value": "DIFFERENT",
                "format": red_format
            }
        )

        sheet.conditional_format(
            f"H2:H{max_row}",
            {
                "type": "text",
                "criteria": "containing",
                "value": "MATCH",
                "format": green_format
            }
        )

        sheet.conditional_format(
            f"H2:H{max_row}",
            {
                "type": "text",
                "criteria": "containing",
                "value": "MISSING",
                "format": blue_format
            }
        )

    print(f"\nReport Created : {OUTPUT_FILE}")

if __name__ == "__main__":

    print("=" * 60)
    print("Dynatrace Terraform Comparison")
    print("=" * 60)

    print(
        f"Start Time : {datetime.now()}"
    )

    comparison_df, file_summary_df = (
        compare_all_files()
    )

    create_excel_report(
        comparison_df,
        file_summary_df
    )

    print(
        f"Files Checked : {len(file_summary_df)}"
    )

    print(
        f"Rows Generated : {len(comparison_df)}"
    )

    print(
        f"Completed : {datetime.now()}"
    )
