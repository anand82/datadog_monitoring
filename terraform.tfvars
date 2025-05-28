datadog_api_key    = "datadog_api_key_value"
datadog_app_key    = "datadog_app_key"
monitor_name       = "High CPU Usage Alert"
critical_threshold = 90
warning_threshold  = 80
tags               = ["environment:production", "team:sre"]
alert_message      = "High CPU usage detected. Please investigate."