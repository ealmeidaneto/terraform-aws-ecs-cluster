resource "aws_ecs_cluster" "cluster" {

  name = var.cluster_name

  capacity_providers = var.capacity_providers

  dynamic "default_capacity_provider_strategy" {
    for_each = var.default_capacity_provider_strategy
    content {
      capacity_provider = lookup(var.default_capacity_provider_strategy.value, "capacity_provider", null)
      weight            = lookup(var.default_capacity_provider_strategy.value, "weight", null)
      base              = lookup(var.default_capacity_provider_strategy.value, "base", null)
    }
  }

  setting {

    name  = "containerInsights"
    value = var.container_insights ? "enabled" : "disabled"

  }

}

