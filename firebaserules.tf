# Firebase Firestore Security Rules
resource "google_firebaserules_ruleset" "firestore_rules" {
  project = var.project_id

  source {
    files {
      content = file("firebaserules/firestore.rules")
      name    = "firestore.rules"
    }
  }
}
resource "google_firebaserules_release" "firestore_rules" {
  project      = var.project_id
  name         = local.firebaserules_release_firestore_name
  ruleset_name = "projects/${var.project_id}/rulesets/${google_firebaserules_ruleset.firestore_rules.name}"

  lifecycle {
    replace_triggered_by = [google_firebaserules_ruleset.firestore_rules]
  }
}

# Firebase Storage Security Rules
resource "google_firebaserules_ruleset" "storage_rules" {
  project = var.project_id

  source {
    files {
      content = file("firebaserules/storage.rules")
      name    = "storage.rules"
    }
  }
}
resource "google_firebaserules_release" "storage_rules" {
  project      = var.project_id
  name         = local.firebaserules_release_storage_name
  ruleset_name = "projects/${var.project_id}/rulesets/${google_firebaserules_ruleset.storage_rules.name}"

  lifecycle {
    replace_triggered_by = [google_firebaserules_ruleset.storage_rules]
  }
}