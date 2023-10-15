# 注意点
# google_project_iam_bindingリソースを使用している
# 指定されたロール(roles/viewer)のメンバーを上書きする
# もし他のユーザーやサービスアカウントなどもこのロールに紐づいている場合、その設定は失われる可能性がある
# その場合は google_project_iam_member リソースを使用すること
resource "google_project_iam_binding" "viewer" {
  project = var.project_id
  role    = "roles/viewer"

  members = [
    "user:${var.gcp_principal_midori}",
    "user:${var.gcp_principal_satoru}",
  ]
}
