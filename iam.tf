resource "google_project_iam_member" "owner_cobo" {
  project = var.project_id
  role    = "roles/owner"
  member  = "user:${var.gcp_principal_cobo}"
}

resource "google_project_iam_member" "editor_midori" {
  project = var.project_id
  role    = "roles/editor"
  member  = "user:${var.gcp_principal_midori}"
}

resource "google_project_iam_member" "editor_satoru" {
  project = var.project_id
  role    = "roles/editor"
  member  = "user:${var.gcp_principal_satoru}"
}