resource "dynatrace_span_entry_point" "Suppress_producer_spans" {
  name         = "Suppress producer spans"
  action       = "DONT_CREATE_ENTRYPOINT"
  insert_after = "vu9U3hXa3q0AAAABABlidWlsdGluOnNwYW4tZW50cnktcG9pbnRzAAZ0ZW5hbnQABnRlbmFudAAkZDhiNTIzNTYtYmIwNC0zNWZmLWE0OGYtNTA5ODkxZGM2ZWVmvu9U3hXa3q0"
  matches {
    match {
      comparison = "EQUALS"
      source     = "SPAN_KIND"
      value      = "PRODUCER"
    }
  }
}
