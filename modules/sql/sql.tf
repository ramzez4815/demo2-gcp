resource "random_string" "four_chars" {
  length  = 4
  upper   = false # instance names can only have lowercase letters, numbers, and hyphens
  special = false
}

resource "google_sql_database_instance" "master" {
  name             = "demo-${random_string.four_chars.result}"
  database_version = var.db_version #defaul 5.6
  region           = var.db_region
  settings {
    tier              = var.db_tier
    activation_policy = "ALWAYS"
    ip_configuration {
      ipv4_enabled    = false
      private_network = var.sql_private_network
    }
  }
  deletion_protection = false
}

resource "google_sql_database" "database" {
  name       = var.database_name
  instance   = google_sql_database_instance.master.name
  charset    = var.sql_charset
  depends_on = [google_sql_database_instance.master]
}

resource "google_sql_user" "users" {
  name       = var.sql_username
  instance   = google_sql_database_instance.master.name
  host       = "%"
  password   = var.sql_user_password
  depends_on = [google_sql_database.database]
}
