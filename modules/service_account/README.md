# Usage

- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure


# Service Account

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project\_id | The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression to comply with RFC1035. Changing this forces a new | `string` | - | yes |
| display_name | The display name for the service account. Can be updated without creating a new resource. | `string` | - | no |

# Project IAM Member

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project\_id | The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression to comply with RFC1035. Changing this forces a new | `string` | - | yes |
| role | The role that should be applied. Only one google_project_iam_binding can be used per role. Note that custom roles must be of the format projects/organizations/parent-name/roles/role-name | `string` | - | yes |
| member | Identities that will be granted the privilege in role. | `list` | - | yes |

# Service Account Key

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| account_id | The name of the service account key. This must have format projects/PROJECT_ID/serviceAccounts/ACCOUNT/keys/KEYID, where ACCOUNT is the email address or unique id of the service account. | `string` | - | yes |


### Configure a Service Account
In order to execute this module you must have a Service Account with the following project roles:

- apigateway.apiconfigs.getIamPolicy
- apigateway.apiconfigs.setIamPolicy
- iam.serviceAccounts.create
- iam.serviceAccounts.delete
- iam.serviceAccounts.get

[Service Account information](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account)
[Project IAM information](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_iam#google_project_iam_member)
[Service Account Key information](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/service_account_key)

