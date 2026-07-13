resource "dynatrace_span_entry_point" "Suppress_internal_spans" {
  name         = "Suppress internal spans"
  action       = "DONT_CREATE_ENTRYPOINT"
  insert_after = "vu9U3hXa3q0AAAABABlidWlsdGluOnNwYW4tZW50cnktcG9pbnRzAAZ0ZW5hbnQABnRlbmFudAAkNTBjNDIyOTQtYjU3NS0zYzZjLWFjYTYtMTQ2MTNhMjM4NTMyvu9U3hXa3q0"
  matches {
    match {
      comparison = "EQUALS"
      source     = "SPAN_KIND"
      value      = "INTERNAL"
    }
  }
}
