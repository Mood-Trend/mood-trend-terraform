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

resource "google_project_iam_member" "snyk_scan_cloudasset_editor" {
  project = var.project_id
  role    = "roles/cloudasset.viewer"
  member  = "serviceAccount:snyk-scan@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "cloud_scheduler_snyk_scan_cloudbuild_builds_builder" {
  project = var.project_id
  role    = "roles/cloudbuild.builds.builder"
  member  = "serviceAccount:cloud-scheduler-snyk-scan@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "snyk_scan_cloudbuild_builds_builder" {
  project = var.project_id
  role    = "roles/cloudbuild.builds.builder"
  member  = "serviceAccount:snyk-scan@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "cloud_scheduler_snyk_scan_cloudscheduler_jobRunner" {
  project = var.project_id
  role    = "roles/cloudscheduler.jobRunner"
  member  = "serviceAccount:cloud-scheduler-snyk-scan@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "github_actions_functions_editor" {
  project = var.project_id
  role    = "roles/editor"
  member  = "serviceAccount:github-actions-functions@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "github_actions_terraform_editor" {
  project = var.project_id
  role    = "roles/editor"
  member  = "serviceAccount:github-actions-terraform@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "github_actions_functions_firebase_admin" {
  project = var.project_id
  role    = "roles/firebase.admin"
  member  = "serviceAccount:github-actions-functions@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "github_actions_terraform_firebase_admin" {
  project = var.project_id
  role    = "roles/firebase.admin"
  member  = "serviceAccount:github-actions-terraform@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "firebase_adminsdk_u21fw_firebase_sdkAdminServiceAgent" {
  project = var.project_id
  role    = "roles/firebase.sdkAdminServiceAgent"
  member  = "serviceAccount:firebase-adminsdk-u21fw@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "github_actions_terraform_firebaserules_admin" {
  project = var.project_id
  role    = "roles/firebaserules.admin"
  member  = "serviceAccount:github-actions-terraform@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "snyk_scan_iam_securityReviewer" {
  project = var.project_id
  role    = "roles/iam.securityReviewer"
  member  = "serviceAccount:snyk-scan@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "firebase_adminsdk_u21fw_iam_serviceAccountTokenCreator" {
  project = var.project_id
  role    = "roles/iam.serviceAccountTokenCreator"
  member  = "serviceAccount:firebase-adminsdk-u21fw@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "cloud_scheduler_snyk_scan_iam_serviceAccountUser" {
  project = var.project_id
  role    = "roles/iam.serviceAccountUser"
  member  = "serviceAccount:cloud-scheduler-snyk-scan@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "github_actions_functions_iam_workloadIdentityUser" {
  project = var.project_id
  role    = "roles/iam.workloadIdentityUser"
  member  = "serviceAccount:github-actions-functions@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "github_actions_terraform_iam_workloadIdentityUser" {
  project = var.project_id
  role    = "roles/iam.workloadIdentityUser"
  member  = "serviceAccount:github-actions-terraform@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "snyk_scan_logging_configWriter" {
  project = var.project_id
  role    = "roles/logging.configWriter"
  member  = "serviceAccount:snyk-scan@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "koborinai_owner" {
  project = var.project_id
  role    = "roles/owner"
  member  = "user:${var.gcp_principal_cobo}"
}

resource "google_project_iam_member" "github_actions_functions_resourcemanager_projectIamAdmin" {
  project = var.project_id
  role    = "roles/resourcemanager.projectIamAdmin"
  member  = "serviceAccount:github-actions-functions@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "github_actions_terraform_resourcemanager_projectIamAdmin" {
  project = var.project_id
  role    = "roles/resourcemanager.projectIamAdmin"
  member  = "serviceAccount:github-actions-terraform@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "snyk_scan_secretmanager_secretAccessor" {
  project = var.project_id
  role    = "roles/secretmanager.secretAccessor"
  member  = "serviceAccount:snyk-scan@mood-trend-dev.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "snyk_scan_viewer" {
  project = var.project_id
  role    = "roles/viewer"
  member  = "serviceAccount:snyk-scan@mood-trend-dev.iam.gserviceaccount.com"
}