variable "datadog_api_key" {
  description = "Datadog API key"
  type        = string

}
variable "datadog_app_key" {
  description = "Datadog Application key"
  type        = string
}
variable "monitor_name" {
  description = "Name of the Datadog monitor"
  type        = string
  default     = "High CPU Usage Alert"
}
variable "critical_threshold" {
  description = "Critical threshold for the monitor (in %)"
  type        = number
  default     = 90

}
variable "warning_threshold" {
  description = "Warning threshold for the monitor (in %)"
  type        = number
  default     = 80
}
variable "tags" {
  description = "Tags to apply to the monitor"
  type        = list(string)
  default     = ["environment:production", "team:sre"]

}
variable "alert_message" {
  description = "Message to send when the alert is triggered"
  type        = string
  default     = "High CPU usage detected. Please investigate."

}
variable "notification_emails" {
  description = "Email address to send notifications to"
  type        = list(string)
  default     = ["sre@sre_observability.com"]
  
}