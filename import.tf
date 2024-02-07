# google_project_iam_member
import {
  id = "${var.project_id} roles/firebase.sdkAdminServiceAgent serviceAccount:${var.firebase-adminsdk-service-account}@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.firebase_adminsdk_u21fw_firebase_sdkAdminServiceAgent
}

import {
  id = "${var.project_id} roles/iam.serviceAccountTokenCreator serviceAccount:${var.firebase-adminsdk-service-account}@${var.project_id}.iam.gserviceaccount.com"
  to = google_project_iam_member.firebase_adminsdk_u21fw_iam_serviceAccountTokenCreator
}