# Firebase プロジェクト作成のための各種リソースを定義する
## 各種 API を有効化する
resource "google_project_service" "default" {
  provider = google-beta.no_user_project_override
  project  = var.project_id
  for_each = toset([
    "cloudbuild.googleapis.com",
    "firestore.googleapis.com",
    "cloudbilling.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "serviceusage.googleapis.com",
    "identitytoolkit.googleapis.com",
    "firebase.googleapis.com",
    "firebaserules.googleapis.com",
    "firebasestorage.googleapis.com",
    "storage.googleapis.com",
  ])
  service            = each.key
  disable_on_destroy = false
}

## Firebase のプロジェクトを立ち上げる
resource "google_firebase_project" "default" {
  provider = google-beta
  project  = var.project_id

  # 各種 API が有効化されるのを待ってから 本リソースが実行される
  depends_on = [
    google_project_service.default,
  ]
}

## Firebase プロジェクトを東京リージョンに配置する
resource "google_firebase_project_location" "default" {
  provider = google-beta
  project  = var.project_id

  location_id = local.region
}