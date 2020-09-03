variable "cluster_name" {
  type        = string
  default     = ""
  description = "(Required) The name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
}

variable "capacity_providers" {
  type        = list(string)
  default     = []
  description = "Optional) List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT."
}

variable "default_capacity_provider_strategy" {
  type        = map(string)
  default     = {}
  description = "(Optional) The capacity provider strategy to use by default for the cluster. Can be one or more. Defined below."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Map of tags to add to Cluster"
}

variable "container_insights" {
  type        = bool
  default     = false
  description = "Controls if containerInsights is enabled or disabled"
}
