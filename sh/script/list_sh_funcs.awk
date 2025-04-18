BEGIN { in_func=0; shell_func="" }
  /^[[:space:]]*[a-zA-Z_][a-zA-Z0-9_]*[[:space:]]*\(\)[[:space:]]*\{/ {
    in_func=1
    brace_count=1
    shell_func=$0
    next
  }
  in_func {
    shell_func = shell_func " " $0
    brace_count += gsub(/\{/, "{")
    brace_count -= gsub(/\}/, "}")
    if (brace_count == 0) {
      print shell_func
      in_func=0
      shell_func=""
    }
    next
  }
