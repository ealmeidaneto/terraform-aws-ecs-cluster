# Terraform ECS Cluster Module
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| aws | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| capacity\_providers | Optional) List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE\_SPOT. | `list(string)` | `[]` | no |
| cluster\_name | (Required) The name of the cluster (up to 255 letters, numbers, hyphens, and underscores) | `string` | `""` | no |
| container\_insights | Controls if containerInsights is enabled or disabled | `bool` | `false` | no |
| default\_capacity\_provider\_strategy | (Optional) The capacity provider strategy to use by default for the cluster. Can be one or more. Defined below. | `map(string)` | `{}` | no |
| tags | Map of tags to add to Cluster | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| cluster\_name\_arn | The Amazon Resource Name (ARN) that identifies the cluster |
| cluster\_name\_id | The Amazon Resource Name (ARN) that identifies the cluster |
