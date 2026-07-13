resource "dynatrace_attribute_allow_list" "php_drupal_application_name" {
  enabled = true
  key     = "php.drupal.application.name"
}
