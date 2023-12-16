resource "google_project_iam_binding" "owner" {
  project = var.project_id
  role    = "roles/owner"

  members = [
    "user:${var.gcp_principal_midori}",
    "user:${var.gcp_principal_satoru}",
    "user:${var.gcp_principal_cobo}",
  ]
}
