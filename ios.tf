# Firebase iOS App
resource "google_firebase_apple_app" "default" {
  provider     = google-beta
  project      = var.project_id
  display_name = local.app_name
  bundle_id    = var.ios_bundle_id

  depends_on = [
    google_firebase_project.default,
  ]
}