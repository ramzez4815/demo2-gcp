resource "google_service_account" "proxy-sa" {
  account_id   = var.sa_account_id
  display_name = var.sa_display_name
}

resource "google_project_iam_member" "proxy-iam" {
  project = var.project_id
  role    = var.sa_role
  member  = "serviceAccount:${google_service_account.proxy-sa.email}"
}

resource "google_service_account_key" "key" {
  service_account_id = google_service_account.proxy-sa.name
}