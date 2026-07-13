resource "dynatrace_openpipeline_v2_metrics_pipelines" "Active_Directory" {
  custom_id    = "active-directory-metrics"
  display_name = "Active Directory"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.active-directory-python-unabridged"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "6.1.1"
    }
  }
  processing {
    processors {
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_INSTANCE_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.server*\")"
        dql {
          script = "fieldsAdd ad_instance_name = concat(\"Active Directory on \", host.name)"
        }
      }
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_DNS_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.dns*\")"
        dql {
          script = "fieldsAdd ad_dns_name = concat(\"Active Directory DNS on \", host.name)"
        }
      }
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_DHCP_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.dhcp*\")"
        dql {
          script = "fieldsAdd ad_dhcp_name = concat(\"Active Directory DHCP on \", host.name)"
        }
      }
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_DFS_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.dfs*\")"
        dql {
          script = "fieldsAdd ad_dfs_name = concat(\"Active Directory DFS on \", host.name)"
        }
      }
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_LDAP_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.ldap*\")"
        dql {
          script = "fieldsAdd ad_ldap_name = concat(\"Active Directory LDAP on \", host.name)"
        }
      }
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_ATQ_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.atq*\")"
        dql {
          script = "fieldsAdd ad_atq_name = concat(\"Active Directory ATQ on \", host.name)"
        }
      }
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_DRA_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.dra*\")"
        dql {
          script = "fieldsAdd ad_dra_name = concat(\"Active Directory DRA on \", host.name)"
        }
      }
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_NETWORK_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.network*\")"
        dql {
          script = "fieldsAdd ad_network_name = concat(\"Active Directory Network on \", host.name)"
        }
      }
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_NTLM_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.lsass.server.ntlm*\")"
        dql {
          script = "fieldsAdd ad_ntlm_name = concat(\"Local Security Authority NTLM on \", host.name)"
        }
      }
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_DB_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.database*\")"
        dql {
          script = "fieldsAdd ad_db_name = concat(\"Active Directory DB on \", host.name)"
        }
      }
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_ESENT_DB_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.lsass.esent*\")"
        dql {
          script = "fieldsAdd ad_esent_db_name = concat(\"Local Security Authority ESENT DB on \", host.name)"
        }
      }
      processor {
        description = "Add field to make display name for entity"
        type        = "dql"
        enabled     = true
        id          = "AD_KERBEROS_entity_display_name"
        matcher     = "matchesValue(metric.key, \"active-directory.replication.partner.count.total\")"
        dql {
          script = "fieldsAdd ad_kerberos_name = concat(\"Local Security Authority Kerberos on on \", host.name)"
        }
      }
    }
  }
  smartscape_edge_extraction {
    processors {
      processor {
        description = "Create belongs_to relationship from HOST to AD_DOMAIN"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "HOST_belongs_to_EXTENSION_AD_DOMAIN"
        matcher     = "matchesValue(metric.key, \"active-directory.server.host.cpu.time.processor\")"
        smartscape_edge {
          edge_type            = "belongs_to"
          source_id_field_name = "dt.smartscape.host"
          source_type          = "HOST"
          target_id_field_name = "dt.smartscape.ad_domain"
          target_type          = "AD_DOMAIN"
        }
      }
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Create entity for Active Directory Domain"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DOMAIN_ENTITY_METRICS"
        matcher     = "matchesValue(metric.key, \"active-directory.server*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ad_domain"
          node_type          = "AD_DOMAIN"
          id_components {
            id_component {
              id_component          = "domain"
              referenced_field_name = "domain"
            }
          }
        }
      }
      processor {
        description = "Extract node for Active Directory Domain"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DOMAIN_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.server.host.cpu.time.processor\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ad_domain"
          node_type          = "AD_DOMAIN"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "domain"
              referenced_field_name = "domain"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_ad_domain"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "domain"
              referenced_field_name = "domain"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "domain"
            }
          }
        }
      }
      processor {
        description = "Create entity for Active Directory"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_INSTANCE_ENTITY_METRICS"
        matcher     = "matchesValue(metric.key, \"active-directory.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ad_instance"
          node_type          = "AD_INSTANCE"
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Active Directory"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_INSTANCE_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.server.host.cpu.time.processor\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ad_instance"
          node_type          = "AD_INSTANCE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_ad_instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_instance_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_domain"
              target_type          = "AD_DOMAIN"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for Active Directory DNS"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DNS_ENTITY_METRICS"
        matcher     = "matchesValue(metric.key, \"active-directory.dns*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ad_dns"
          node_type          = "AD_DNS"
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Active Directory DNS"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DNS_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.dns.server.caching.memory.total\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ad_dns"
          node_type          = "AD_DNS"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_ad_dns"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_dns_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_instance"
              target_type          = "AD_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for Active Directory DHCP"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DHCP_ENTITY_METICS"
        matcher     = "matchesValue(metric.key, \"active-directory.dhcp*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ad_dhcp"
          node_type          = "AD_DHCP"
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Active Directory DHCP"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DHCP_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.dhcp.server.requests.persec\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ad_dhcp"
          node_type          = "AD_DHCP"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_ad_dhcp"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_dhcp_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_instance"
              target_type          = "AD_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for Active Directory DFS"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DFS_ENTITY_METRICS"
        matcher     = "matchesValue(metric.key, \"active-directory.dfs*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ad_dfs"
          node_type          = "AD_DFS"
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Active Directory DFS"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DFS_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.dfs.server.replicatedfolders.conflictspaceinuse.bytes.total\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ad_dfs"
          node_type          = "AD_DFS"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dfs.server.name"
              referenced_field_name = "dfs.server.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_ad_dfs"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_dfs_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_instance"
              target_type          = "AD_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for Active Directory LDAP"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_LDAP_ENTITY_METRICS"
        matcher     = "matchesValue(metric.key, \"active-directory.ldap*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ad_ldap"
          node_type          = "AD_LDAP"
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Active Directory LDAP"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_LDAP_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.ldap.server.ldapbindtime.binds.persec\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ad_ldap"
          node_type          = "AD_LDAP"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_ad_ldap"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_ldap_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_instance"
              target_type          = "AD_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for Active Directory ATQ"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_ATQ_ENTITY_METRICS"
        matcher     = "matchesValue(metric.key, \"active-directory.atq*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ad_atq"
          node_type          = "AD_ATQ"
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Active Directory ATQ"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_ATQ_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.atq.server.atqoutstandingqueuedrequests.total\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ad_atq"
          node_type          = "AD_ATQ"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_ad_atq"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_atq_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_instance"
              target_type          = "AD_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for Active Directory DRA"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DRA_ENTITY_METRICS"
        matcher     = "matchesValue(metric.key, \"active-directory.dra*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ad_dra"
          node_type          = "AD_DRA"
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Active Directory DRA"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DRA_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.dra.server.drasynchrequestssuccessful.total.count\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ad_dra"
          node_type          = "AD_DRA"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_ad_dra"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_dra_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_instance"
              target_type          = "AD_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for Active Directory Network"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_NETWORK_ENTITY_METRICS"
        matcher     = "matchesValue(metric.key, \"active-directory.network*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ad_network"
          node_type          = "AD_NETWORK"
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Active Directory Network"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_NETWORK_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.network.login.logons.count\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ad_network"
          node_type          = "AD_NETWORK"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_ad_network"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_network_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_instance"
              target_type          = "AD_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for Local Security Authority NTLM"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_NTLM_ENTITY_METRICS"
        matcher     = "matchesValue(metric.key, \"active-directory.lsass.server.ntlm*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.lsa_ntlm"
          node_type          = "LSA_NTLM"
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Local Security Authority NTLM"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_NTLM_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.lsass.server.ntlm.binds.persec.count\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.lsa_ntlm"
          node_type          = "LSA_NTLM"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "wmi_lsass_ntlm_name"
              referenced_field_name = "ntlm.server.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_lsa_ntlm"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_ntlm_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_instance"
              target_type          = "AD_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for Active Directory Database"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DB_ENTITY_METRICS"
        matcher     = "matchesValue(metric.key, \"active-directory.database*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ad_db"
          node_type          = "AD_DB"
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Active Directory Database"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_DB_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.database.adds.persec.count\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ad_db"
          node_type          = "AD_DB"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_ad_db"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_db_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_instance"
              target_type          = "AD_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for Local Security Authority ESENT Database"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_ESENT_DB_ENTITY_METRICS"
        matcher     = "matchesValue(metric.key, \"active-directory.lsass.esent*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.lsa_esent"
          node_type          = "LSA_ESENT"
          id_components {
            id_component {
              id_component          = "host_name"
              referenced_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Local Security Authority ESENT Database"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_ESENT_DB_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.lsass.esent.database.io.reads.persec.count\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.lsa_esent"
          node_type          = "LSA_ESENT"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "wmi_lsass_esent_name"
              referenced_field_name = "esent.server.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_lsa_esent"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_esent_db_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_instance"
              target_type          = "AD_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Extract node for Local Security Authority Kerberos"
        type        = "smartscapeNode"
        enabled     = true
        id          = "AD_KERBEROS_ENTITY"
        matcher     = "matchesValue(metric.key, \"active-directory.replication.partner.count.total\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.lsa_kerberos"
          node_type          = "LSA_KERBEROS"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:com_dynatrace_extension_lsa_kerberos"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "host.name"
              referenced_field_name = "host.name"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "ad_kerberos_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ad_instance"
              target_type          = "AD_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
    }
  }
}
