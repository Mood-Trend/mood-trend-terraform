resource "google_app_engine_application" "default" {
  auth_domain    = "gmail.com"
  database_type  = "CLOUD_FIRESTORE"
  location_id    = "asia-northeast1"
  project        = "${var.project_id}"
  serving_status = "SERVING"
  feature_settings {
    split_health_checks = true
  }
  timeouts {
    create = null
    update = null
  }
}
