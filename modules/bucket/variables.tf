variable "bucket_name" {
  type        = string
  description = "SQL Backup bucket name"
}
variable "gcp_region" {
  type        = string
  description = "GCP Region"
}
variable "project_id" {
  type        = string
  description = "GCP Project ID"
}
variable "uniform_bucket_level_access" {
  type        = bool
  description = "Bucket Level Access"
}
variable "force_destroy" {
  type        = bool
  description = "Bucket Force Destroy"
}