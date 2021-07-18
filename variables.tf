variable "backend_bucket" {
  type        = string
  description = "Terraform bucket name"
}
variable "backend_bucket_prefix" {
  type        = string
  description = "Terraform bucket prefix"
}
variable "sa_account_id" {
  type        = string
  description = "Service Account accountID"
}
variable "sa_display_name" {
  type        = string
  description = "Service Account Display Name"
}
variable "gcp_project_id" {
  type        = string
  description = "GCP Project ID"
}
variable "gcp_region" {
  type        = string
  description = "GCP Region"
}
variable "gke_custler_name" {
  type        = string
  description = "GKE Cluster Name"
}
variable "gke_location" {
  type        = string
  description = "GKE Location"
}
variable "gke_zones" {
  type        = list(string)
  description = "GKE List of Zones"
}
variable "gke_regional" {
  type        = bool
  description = "GKE Regional Flag"
}
variable "gke_network_name" {
  type        = string
  description = "GKE VPC Name"
}
variable "gke_subnetwork_name" {
  type        = string
  description = "GKE Subnetwork Name"
}
variable "gke_horizontal_autoscaling" {
  type        = bool
  description = "GKE Horizontal Autoscaling Flag"
}
variable "gke_load_balancer" {
  type        = bool
  description = "GKE Load Balancer Flag"
}
variable "gke_node_pool_name" {
  type        = string
  description = "GKE Node Pool Name"
}
variable "gke_service_account" {
  type        = string
  description = "GKE Service Account Name"
}
variable "vpc_auto_create_subnetworks" {
  type        = bool
  description = "VPC Autocreate subnetwork flag"
}
variable "vpc_mtu" {
  type        = number
  description = "VPC MTU Value"
}
variable "gke_router_name" {
  type        = string
  description = "GKE router name"
}
variable "gke_nat_name" {
  type        = string
  description = "GKE Nat name"
}
variable "gke_machine_type" {
  type        = string
  description = "GKE Machine Type"
}
variable "gke_disk_type" {
  type        = string
  description = "GKE Disk Type"
}
variable "gke_pod_range" {
  type        = string
  description = "GKE Pod Range Name"
}
variable "gke_service_range" {
  type        = string
  description = "GKE Service Range Name"
}
variable "sql_username" {
  type        = string
  description = "SQL User name"
}
variable "sql_user_password" {
  type        = string
  description = "SQL User initial password"
}
variable "bucket_name" {
  type        = string
  description = "SQL Backup bucket name"
}