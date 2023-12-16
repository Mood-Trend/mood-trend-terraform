resource "google_project_iam_binding" "viewer" {
  project = var.project_id
  role    = "roles/owner"

  members = [
    "user:${var.gcp_principal_midori}",
    "user:${var.gcp_principal_satoru}",
  ]
}
