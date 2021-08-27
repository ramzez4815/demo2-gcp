variable "db_region" {
  type        = string
  description = "DB Region"
}
variable "sql_username" {
  type        = string
  description = "SQL User name"
}
variable "sql_user_password" {
  type        = string
  description = "SQL User initial password"
}
variable "database_name" {
  type        = string
  description = "SQL DB name"
}
variable "sql_private_network" {
  type        = string
  description = "SQL VPC name"
}
variable "sql_charset" {
  type        = string
  description = "SQL charset"
}
variable "db_tier" {
  type        = string
  description = "SQL tier"
}
variable "db_version" {
  type        = string
  description = "SQL version"
}