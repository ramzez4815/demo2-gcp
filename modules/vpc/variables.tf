variable "project_id" {
  type        = string
  description = "GCP Project ID"
}
variable "gke_network_name" {
  type        = string
  description = "GKE VPC Name"
}
variable "vpc_auto_create_subnetworks" {
  type        = bool
  description = "VPC Autocreate subnetwork flag"
}
variable "vpc_mtu" {
  type        = number
  description = "VPC MTU Value"
}
variable "gke_subnetwork_name" {
  type        = string
  description = "GKE Subnetwork Name"
}
variable "gke_subnet_ip" {
  type        = string
  description = "GKE Subnetwork IP"
}
variable "gke_subnet_private_access" {
  type        = string
  description = "GKE Subnet private access"
}
variable "gke_pod_range" {
  type        = string
  description = "GKE Pod Range Name"
}
variable "gke_service_range" {
  type        = string
  description = "GKE Service Range Name"
}
variable "gke_ip_cidr_range_pod" {
  type        = string
  description = "GKE ip_cidr Pod Range"
}
variable "gke_ip_cidr_range_service" {
  type        = string
  description = "GKE ip_cidr Service Range"
}
variable "gke_privade_block_name" {
  type        = string
  description = "GKE Privade Block Name"
}
variable "gke_privade_block_purpose" {
  type        = string
  description = "GKE Privade Block Purpose"
}
variable "gke_privade_block_address_type" {
  type        = string
  description = "GKE Privade Block Address Type"
}
variable "gke_privade_block_ip_version" {
  type        = string
  description = "GKE Privade Block IP Version"
}
variable "gke_privade_block_prefix_length" {
  type        = number
  description = "GKE Privade Block Prefix Length"
}
variable "gke_networking_connection_service" {
  type        = string
  description = "GKE Networking Connection Service"
}
variable "gke_firewall_rule" {
  type        = string
  description = "GCE Firewall Rule"
}
variable "gke_firewall_direction" {
  type        = string
  description = "GCE Firewall Direction"
}
variable "gke_firewall_protocol" {
  type        = string
  description = "GCE Firewall Protocol"
}
variable "gke_firewall_port" {
  type        = string
  description = "GCE Firewall Port"
}
variable "gke_region" {
  type        = string
  description = "GCE Region"
}