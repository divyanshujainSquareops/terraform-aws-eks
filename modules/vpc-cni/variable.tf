variable "addon_config" {
  description = "Amazon EKS Managed Add-on"
  type        = any
  default     = {}
}

variable "enable_ipv6" {
  description = "Enable IPV6 CNI policy"
  type        = any
  default     = false
}

variable "addon_context" {
  description = "Input configuration for the addon"
  type = object({
    aws_caller_identity_account_id = string
    aws_caller_identity_arn        = string
    aws_eks_cluster_endpoint       = string
    aws_partition_id               = string
    aws_region_name                = string
    eks_cluster_id                 = string
    eks_oidc_issuer_url            = string
    tags                           = map(string)
  })
}
