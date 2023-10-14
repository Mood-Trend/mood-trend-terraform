# Firebase Firestore Instance
resource "google_firestore_database" "default" {
  project                     = var.project_id
  name                        = "(default)"
  location_id                 = local.region
  type                        = "FIRESTORE_NATIVE"
  concurrency_mode            = "OPTIMISTIC"
  app_engine_integration_mode = "DISABLED"

  depends_on = [
    google_firebase_project.default,
    google_project_service.default,
  ]
}

# Firebase Firestore コレクション／ドキュメント定義
# 今後マスタデータを管理する場合はコメントアウトを外してください
# resource "google_firestore_document" "mydoc" {
#   project     = var.project_id
#   collection  = "somenewcollection"
#   document_id = "my-doc-id"
#   fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}"
#   depends_on  = [google_firestore_database.default]
# }