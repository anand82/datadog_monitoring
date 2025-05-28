# This Terraform configuration creates a Datadog monitor for high CPU usage.
# It sets up a metric alert that triggers when the average CPU usage exceeds specified thresholds.
resource "datadog_monitor" "cpu_high" {
  name               = var.monitor_name
  type               = "metric alert"
  message            = "${var.alert_message}\n\n${join(" ", formatlist("@%s", var.notification_emails))}"
  query              = "avg(last_5m):avg:system.cpu.user{*} > ${var.critical_threshold}"
  tags               = var.tags
  escalation_message = "Please check the CPU usage immediately."
  monitor_thresholds {
    critical = var.critical_threshold
    warning  = var.warning_threshold
  }
  notify_no_data      = true
  no_data_timeframe   = 10
  evaluation_delay    = 300
  renotify_interval   = 30
  notify_audit        = true 
  require_full_window = true
}
