resource "dynatrace_default_launchpad" "environment" {
  group_launchpads {
    group_launchpad {
      is_enabled    = true
      launchpad_id  = "a42b0fd4-0660-4cb8-a59c-08114b7cf715"
      user_group_id = "13e2f75c-99df-4114-bb68-50b4dd67f469"
    }
    group_launchpad {
      is_enabled    = true
      launchpad_id  = "11533fb1-111f-4b93-8d63-3347c61780ba"
      user_group_id = "fae3333d-7f06-4a51-8923-12f31eccd4f9"
    }
    group_launchpad {
      is_enabled    = true
      launchpad_id  = "59a835d8-543c-4b4f-9573-69260c54eebd"
      user_group_id = "be5000e7-03bf-499c-b46b-cfe78a2550bc"
    }
    group_launchpad {
      is_enabled    = true
      launchpad_id  = "7ff6e7d6-9995-46a4-8915-937033068aa3"
      user_group_id = "a07535c9-cf48-4970-8e3d-ab2e44b44d80"
    }
  }
}
