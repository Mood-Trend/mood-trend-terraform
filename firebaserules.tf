# Firebase Firestore Security Rules
resource "google_firebaserules_ruleset" "firestore" {
  project = var.project_id

  source {
    files {
      content = file("firebaserules/firestore.rules")
      name    = "firestore.rules"
    }
  }
}
resource "google_firebaserules_release" "firestore" {
  project      = var.project_id
  name         = local.firebaserules_release_firestore_name
  ruleset_name = google_firebaserules_ruleset.firestore.name

  lifecycle {
    replace_triggered_by = [google_firebaserules_ruleset.firestore]
  }
}

# Firebase Storage Security Rules
resource "google_firebaserules_ruleset" "storage" {
  project = "my-project-id"

  source {
    files {
      content = file("firebaserules/storage.rules")
      name    = "storage.rules"
    }
  }
}
resource "google_firebaserules_release" "storage" {
  project      = var.project_id
  name         = local.firebaserules_release_storage_name
  ruleset_name = google_firebaserules_ruleset.storage.name

  lifecycle {
    replace_triggered_by = [google_firebaserules_ruleset.storage]
  }
}