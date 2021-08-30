# Usage

- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure


# GCS

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project\_id | The ID of the project in which the resource belongs. If it is not provided, the provider project is used. | `string` | - | no |
| name | The name of the node pool | `string` | - | yes |
| location | The GCS location | `string` | `US` | no |
| uniform_bucket_level_access | Enables Uniform bucket-level access access to a bucket. | `bool` | `false` | no |
| force_destroy | When deleting a bucket, this boolean option will delete all contained objects. If you try to delete a bucket that contains objects, Terraform will fail that run. | `bool` | `false` | no |


### Configure a Service Account
In order to execute this module you must have a Service Account with the following project roles:

- Storage Admin: roles/storage.admin

[GKE information](https://github.com/terraform-google-modules/terraform-google-kubernetes-engine)