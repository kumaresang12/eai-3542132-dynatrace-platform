resource "dynatrace_attribute_allow_list" "spring_profile_name" {
  enabled = true
  key     = "spring.profile.name"
}
