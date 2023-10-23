# 各種リソース共通の定数群
locals {
  # リージョンコード：東京
  region = "asia-northeast1"

  # アプリ名
  app_name = "Mood Trend"

  # google_firebaserules_release.firestore.name
  firebaserules_release_firestore_name = "cloud.firestore"

  # google_firebaserules_release.storage.name
  firebaserules_release_storage_name = "firebase.storage"
}