data "google_client_config" "default" {}

module "gke" {
  source = "terraform-google-modules/kubernetes-engine/google"

  project_id        = var.project_id
  name              = var.gke_custler_name
  region            = var.gke_region
  regional          = var.gke_regional
  zones             = var.gke_zones
  network           = var.gke_network_name
  subnetwork        = var.gke_subnetwork_name
  ip_range_pods     = var.gke_pod_range
  ip_range_services = var.gke_service_range

  create_service_account   = false 
  remove_default_node_pool = true   

  horizontal_pod_autoscaling = false
  http_load_balancing        = true

  node_pools = [
    {
      name               = var.gke_node_pool_name
      machine_type       = var.gke_machine_type
      node_locations     = var.gke_location
      min_count          = 2
      max_count          = 2
      local_ssd_count    = 0
      disk_size_gb       = 100
      disk_type          = var.gke_disk_type
      image_type         = "COS"
      auto_repair        = true
      auto_upgrade       = true
      service_account    = var.gke_service_account
      preemptible        = false
      initial_node_count = 2
    },
  ]

  node_pools_oauth_scopes = {
    all = []
    default-node-pool = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  node_pools_labels = {
    all = {}
    default-node-pool = {
      default-node-pool = true
    }
  }

  node_pools_tags = {
    all = []
    default-node-pool = [
      "default-node-pool"
    ]
  }

}
