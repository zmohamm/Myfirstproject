output "email" {
    value = google_monitoring_notification_channel.test.*.id
  
}
