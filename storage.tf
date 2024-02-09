resource "google_app_engine_application" "default" {
  auth_domain    = "gmail.com"
  database_type  = "CLOUD_FIRESTORE"
  location_id    = local.region
  project        = var.project_id
  serving_status = "SERVING"
  feature_settings {
    split_health_checks = true
  }
  timeouts {
    create = null
    update = null
  }
}

resource "google_firebase_storage_bucket" "default" {
  provider  = google-beta
  project   = var.project_id
  bucket_id = "${var.project_id}.appspot.com"
}