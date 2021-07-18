resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.gcp_region
  project = var.gcp_project_id
  uniform_bucket_level_access = true
  force_destroy = true
}