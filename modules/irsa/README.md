# irsa

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.72 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.10 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.72 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.irsa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.irsa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [kubernetes_namespace_v1.irsa](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace_v1) | resource |
| [kubernetes_service_account_v1.irsa](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account_v1) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kubernetes_namespace"></a> [kubernetes\_namespace](#input\_kubernetes\_namespace) | Kubernetes Namespace name | `string` | n/a | yes |
| <a name="input_create_kubernetes_namespace"></a> [create\_kubernetes\_namespace](#input\_create\_kubernetes\_namespace) | Should the module create the namespace | `bool` | `true` | no |
| <a name="input_create_kubernetes_service_account"></a> [create\_kubernetes\_service\_account](#input\_create\_kubernetes\_service\_account) | Should the module create the Service Account | `bool` | `true` | no |
| <a name="input_kubernetes_service_account"></a> [kubernetes\_service\_account](#input\_kubernetes\_service\_account) | Kubernetes Service Account Name | `string` | n/a | yes |
| <a name="input_kubernetes_svc_image_pull_secrets"></a> [kubernetes\_svc\_image\_pull\_secrets](#input\_kubernetes\_svc\_image\_pull\_secrets) | list(string) of kubernetes imagePullSecrets | `list(string)` | `[]` | no |
| <a name="input_irsa_iam_policies"></a> [irsa\_iam\_policies](#input\_irsa\_iam\_policies) | IAM Policies for IRSA IAM role | `list(string)` | `[]` | no |
| <a name="input_irsa_iam_role_name"></a> [irsa\_iam\_role\_name](#input\_irsa\_iam\_role\_name) | IAM role name for IRSA | `string` | `""` | no |
| <a name="input_irsa_iam_role_path"></a> [irsa\_iam\_role\_path](#input\_irsa\_iam\_role\_path) | IAM role path for IRSA roles | `string` | `"/"` | no |
| <a name="input_irsa_iam_permissions_boundary"></a> [irsa\_iam\_permissions\_boundary](#input\_irsa\_iam\_permissions\_boundary) | IAM permissions boundary for IRSA roles | `string` | `""` | no |
| <a name="input_eks_oidc_provider_arn"></a> [eks\_oidc\_provider\_arn](#input\_eks\_oidc\_provider\_arn) | EKS OIDC Provider ARN e.g., arn:aws:iam::<ACCOUNT-ID>:oidc-provider/<var.eks\_oidc\_provider> | `string` | n/a | yes |
| <a name="input_eks_cluster_id"></a> [eks\_cluster\_id](#input\_eks\_cluster\_id) | EKS Cluster ID | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `map('BusinessUnit`,`XYZ`) | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_irsa_iam_role_arn"></a> [irsa\_iam\_role\_arn](#output\_irsa\_iam\_role\_arn) | IAM role ARN for your service account |
| <a name="output_irsa_iam_role_name"></a> [irsa\_iam\_role\_name](#output\_irsa\_iam\_role\_name) | IAM role name for your service account |
| <a name="output_namespace"></a> [namespace](#output\_namespace) | IRSA Namespace |
| <a name="output_service_account"></a> [service\_account](#output\_service\_account) | IRSA Service Account |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
