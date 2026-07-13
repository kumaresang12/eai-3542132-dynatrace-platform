resource "dynatrace_log_processing" "_Built-in_db_cassandra_logback" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACNidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWRwcC1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDY3Y2M4MzYwLTViNjUtNDk0MC1iYWFiLTYyZmRmOTNhNTdiZL7vVN4V2t6t"
  query        =<<-EOT
    (matchesValue(process.technology, "cassandra") or matchesValue(process.technology, "apache cassandra"))
  EOT
  rule_name    = "[Built-in] db:cassandra:logback"
  processor_definition {
    rule = "PARSE(content, \"UPPER:loglevel SPACE '[' LD:'thread.name' ']' SPACE TIMESTAMP('yyyy-MM-dd HH:mm:ss,SSS'):timestamp SPACE LD:'code.filepath' ':' INT:'code.lineno' SPACE '-' SPACE DATA\")"
  }
  rule_testing {
    sample_log = jsonencode({
          "content": "WARN  [epollEventLoopGroup-2-2] 2022-03-04 07:22:19,070 Message.java:785 - Unknown exception in client networking\nio.netty.channel.unix.Errors$NativeIoException: syscall:read(...)() failed: Connection reset by peer\n\tat io.netty.channel.unix.FileDescriptor.readAddress(...)(Unknown Source) ~[netty-all-4.0.44.Final.jar:4.0.44.Final]",
          "process.technology": "cassandra"
      })
  }
}
