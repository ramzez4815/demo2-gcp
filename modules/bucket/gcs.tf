resource "google_storage_bucket" "bucket" {
  name                        = var.bucket_name
  location                    = var.gcp_region
  project                     = var.project_id
  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy               = var.force_destroy
}
