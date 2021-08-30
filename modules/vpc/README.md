# Usage

- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure


# VPC

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project\_id | The ID of the project where this VPC will be created | `string` | - | yes |
| network\_name | The name of the network being created | `string` | - | yes |
| auto\_create\_subnetworks | When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources. | `bool` | `false` | no |
| mtu | The network MTU. Must be a value between 1460 and 1500 inclusive. If set to 0 (meaning MTU is unset), the network will default to 1460 automatically. | `number` | `0` | no |

# Subnet
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project\_id | The ID of the project where subnets will be created | `string` | - | yes |
| network\_name | The name of the network where subnets will be created | `string` | - | yes |
| subnets | The list of subnets being created | `list(map(string))` | - | yes |

# Firewall
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| network\_name | Name of the network this set of firewall rules applies to. | `string` | - | yes |
| project\_id | Project id of the project that holds the network. | `string` | - | yes |
| rules | List of custom rule definitions | `list(map(string))` | - | no |



### Configure a Service Account
In order to execute this module you must have a Service Account with the following roles:

- compute.firewalls.create
- compute.firewalls.delete
- compute.networks.create
- compute.networks.delete
- compute.networks.get
- compute.networks.updatePolicy
- compute.subnetworks.create
- compute.subnetworks.delete
- compute.subnetworks.get

- [VPC information](https://github.com/terraform-google-modules/terraform-google-network/tree/v3.4.0/modules/vpc)
- [Subnet information](https://github.com/terraform-google-modules/terraform-google-network/tree/v3.4.0/modules/subnets)
- [Firewall information](https://github.com/terraform-google-modules/terraform-google-network/tree/v3.4.0/modules/firewall-rules)