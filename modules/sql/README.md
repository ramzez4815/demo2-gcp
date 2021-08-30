# Usage

- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure


# SQL Database Instance

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the instance. If the name is left blank, Terraform will randomly generate one when the instance is first created. This is done because after a name is used, it cannot be reused for up to one week. | `string` | - | no |
| database_version | The MySQL, PostgreSQL or SQL Server (beta) version to use.  | `string` | `MYSQL_5_6` | no |
| region | The region the instance will sit in. Note, Cloud SQL is not available in all regions.  | `string` | - | no |
| settings | The settings to use for the database. The configuration is detailed below. Required if clone is not set.  | `string` | - | no |
| deletion_protection | Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply command that deletes the instance will fail.  | `bool` | `true` | no |

# SQL Database

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the database in the Cloud SQL instance. This does not include the project ID or instance name. | `string` | - | yes |
| instance | The name of the Cloud SQL instance. This does not include the project ID.  | `string` | - | yes |
| region | The region the instance will sit in. Note, Cloud SQL is not available in all regions.  | `string` | - | no |
| chartset | The charset value. See MySQL's Supported Character Sets and Collations and Postgres' Character Set Support for more details and supported values. Postgres databases only support a value of UTF8 at creation time.  | `string` | - | no |

# SQL User

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the user. Changing this forces a new resource to be created. | `string` | - | yes |
| instance | The name of the Cloud SQL instance. Changing this forces a new resource to be created.  | `string` | - | yes |
| host | The host the user can connect from. This is only supported for MySQL instances. Don't set this field for PostgreSQL instances. Can be an IP address. Changing this forces a new resource to be created.  | `string` | - | no |
| password | The password for the user. Can be updated. For Postgres instances this is a Required field.  | `string` | - | no |


### Configure a Service Account
In order to execute this module you must have a Service Account with the following project roles:

- Cloud SQL Admin: roles/cloudsql.admin
- Compute Network Admin: roles/compute.networkAdmin

[SQL Database Instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance)
[SQL Database](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database)
[SQL User](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_user)

