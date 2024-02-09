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

resource "google_firebaserules_ruleset" "storage" {
  provider = google-beta
  project  = var.project_id
  source {
    files {
      name    = "storage.rules"
      content = file("firebase_rules/storage.rules")
    }
  }

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [
    google_firebase_project.default,
    google_app_engine_application.default,
  ]
}

resource "google_firebaserules_release" "default-bucket" {
  provider     = google-beta
  name         = "firebase.storage/${google_app_engine_application.default.default_bucket}"
  ruleset_name = "projects/${var.project_id}/rulesets/${google_firebaserules_ruleset.storage.name}"
  project      = var.project_id

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [
    google_app_engine_application.default,
  ]
}