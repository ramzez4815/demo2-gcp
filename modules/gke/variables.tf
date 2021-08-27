variable "project_id" {
  type        = string
  description = "GCP Project ID"
}
variable "gke_custler_name" {
  type        = string
  description = "GKE Cluster Name"
}
variable "gke_region" {
  type        = string
  description = "GKE Region"
}
variable "gke_regional" {
  type        = bool
  description = "GKE Regional Flag"
}
variable "gke_location" {
  type        = string
  description = "GKE Location"
}
variable "gke_zones" {
  type        = list(string)
  description = "GKE List of Zones"
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