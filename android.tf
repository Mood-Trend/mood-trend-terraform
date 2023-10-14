# Firebase Android App
resource "google_firebase_android_app" "default" {
  provider     = google-beta
  project      = var.project_id
  display_name = local.app_name
  package_name = var.android_package_name

  depends_on = [
    google_firebase_project.default,
  ]
}