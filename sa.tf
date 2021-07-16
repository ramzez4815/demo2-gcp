resource "google_service_account" "proxy-sa" {
  account_id   = "proxy-sa"
  display_name = "proxy_sa"
}

resource "google_project_iam_member" "proxy-iam" {
  project = "epam-001"
  role    = "roles/cloudsql.editor"
  member  = "serviceAccount:${google_service_account.proxy-sa.email}"
}

resource "google_service_account_key" "key" {
  service_account_id = google_service_account.proxy-sa.name
}