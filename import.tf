# google_project_iam_member
import {
  id = "${var.project_id} roles/cloudasset.viewer serviceAccount:snyk-scan@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.snyk_scan_cloudasset_editor
}

import {
  id = "${var.project_id} roles/cloudbuild.builds.builder serviceAccount:cloud-scheduler-snyk-scan@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.cloud_scheduler_snyk_scan_cloudbuild_builds_builder
}

import {
  id = "${var.project_id} roles/cloudbuild.builds.builder serviceAccount:snyk-scan@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.snyk_scan_cloudbuild_builds_builder
}

import {
  id = "${var.project_id} roles/cloudscheduler.jobRunner serviceAccount:cloud-scheduler-snyk-scan@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.cloud_scheduler_snyk_scan_cloudscheduler_jobRunner
}

import {
  id = "${var.project_id} roles/editor serviceAccount:github-actions-functions@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.github_actions_functions_editor
}

import {
  id = "${var.project_id} roles/editor serviceAccount:github-actions-terraform@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.github_actions_terraform_editor
}

import {
  id = "${var.project_id} roles/firebase.admin serviceAccount:github-actions-functions@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.github_actions_functions_firebase_admin
}

import {
  id = "${var.project_id} roles/firebase.admin serviceAccount:github-actions-terraform@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.github_actions_terraform_firebase_admin
}

import {
  id = "${var.project_id} roles/iam.securityReviewer serviceAccount:snyk-scan@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.snyk_scan_iam_securityReviewer
}

import {
  id = "${var.project_id} roles/iam.serviceAccountUser serviceAccount:cloud-scheduler-snyk-scan@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.cloud_scheduler_snyk_scan_iam_serviceAccountUser
}

import {
  id = "${var.project_id} roles/iam.workloadIdentityUser serviceAccount:github-actions-functions@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.github_actions_functions_iam_workloadIdentityUser
}

import {
  id = "${var.project_id} roles/iam.workloadIdentityUser serviceAccount:github-actions-terraform@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.github_actions_terraform_iam_workloadIdentityUser
}

import {
  id = "${var.project_id} roles/logging.configWriter serviceAccount:snyk-scan@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.snyk_scan_logging_configWriter
}

import {
  id = "${var.project_id} roles/owner user:${var.gcp_principal_cobo}"
  to = google_project_iam_member.koborinai_owner
}

import {
  id = "${var.project_id} roles/resourcemanager.projectIamAdmin serviceAccount:github-actions-functions@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.github_actions_functions_resourcemanager_projectIamAdmin
}

import {
  id = "${var.project_id} roles/resourcemanager.projectIamAdmin serviceAccount:github-actions-terraform@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.github_actions_terraform_resourcemanager_projectIamAdmin
}

import {
  id = "${var.project_id} roles/secretmanager.secretAccessor serviceAccount:snyk-scan@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.snyk_scan_secretmanager_secretAccessor
}

import {
  id = "${var.project_id} roles/viewer serviceAccount:snyk-scan@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.snyk_scan_viewer
}