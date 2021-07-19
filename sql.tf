resource "random_string" "four_chars" {
  length  = 4
  upper   = false # instance names can only have lowercase letters, numbers, and hyphens
  special = false
}

resource "google_sql_database_instance" "master" {
  name             = "demo-${random_string.four_chars.result}"
  database_version = "MYSQL_5_6" #defaul 5.6
  region           = var.gcp_region
  settings {
    tier              = "db-n1-standard-1"
    activation_policy = "ALWAYS"
    ip_configuration {
      ipv4_enabled    = false
      private_network = "projects/epam-001/global/networks/demo-network"
    }
  }
  deletion_protection = false
  depends_on          = [module.gke]
}

resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.master.name
  charset  = "utf8"
  #collation = "utf8_general_ci"
  depends_on = [google_sql_database_instance.master]
}

resource "google_sql_user" "users" {
  name       = var.sql_username
  instance   = google_sql_database_instance.master.name
  host       = "%"
  password   = var.sql_user_password
  depends_on = [google_sql_database.database]
}
