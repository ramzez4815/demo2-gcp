module "network_vpc" {
  source = "terraform-google-modules/network/google//modules/vpc"

  project_id              = var.gcp_project_id
  network_name            = var.gke_network_name
  auto_create_subnetworks = false #default false
  mtu                     = var.vpc_mtu
}

module "network_subnets" {
  source = "terraform-google-modules/network/google//modules/subnets"

  project_id   = var.gcp_project_id
  network_name = var.gke_network_name

  subnets = [
    {
      subnet_name   = var.gke_subnetwork_name
      subnet_ip     = "10.232.0.0/20" #20 es el default 252 nodos 
      subnet_private_access = "true"
      subnet_region = var.gcp_region
    }
  ]

  secondary_ranges = {
    demo-subnet = [
      {
        range_name    = "${var.gke_pod_range}"
        ip_cidr_range = "10.0.0.0/16"
      },
      {
        range_name    = "${var.gke_service_range}"
        ip_cidr_range = "10.10.0.0/20"
      }
    ]
  }
  depends_on = [module.network_vpc]
}

resource "google_compute_global_address" "private_ip_block" {
  name         = "private-ip-block"
  purpose      = "VPC_PEERING"
  address_type = "INTERNAL"
  ip_version   = "IPV4"
  prefix_length = 20
  network       = module.network_vpc.network_self_link

  depends_on = [module.network_vpc]
}

resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = module.network_vpc.network_self_link
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_block.name]
  depends_on = [module.network_vpc]
}

resource "google_compute_firewall" "allow_ssh" {
  name        = "allow-ssh"
  network     = module.network_vpc.network_name
  direction   = "INGRESS"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  target_tags = ["ssh-enabled"]
  depends_on = [module.network_vpc]
}