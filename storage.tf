# Firebase Storage Security Rules
resource "google_firebaserules_release" "primary" {
  provider     = google-beta
  project      = var.project_id
  name         = "${local.firebaserules_release_storage_name}/buckets/${var.project_id}.appspot.com"
  ruleset_name = "projects/${var.project_id}/rulesets/${google_firebaserules_ruleset.storage.name}"

  lifecycle {
    replace_triggered_by = [
      google_firebaserules_ruleset.storage
    ]
  }
}
resource "google_firebaserules_ruleset" "storage" {
  provider = google-beta
  project  = var.project_id

  source {
    files {
      content = file("firebaserules/storage.rules")
      name    = "storage.rules"
    }
  }
}