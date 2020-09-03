output "cluster_name_id" {
  value       = aws_ecs_cluster.cluster.id
  description = "The Amazon Resource Name (ARN) that identifies the cluster"
}

output "cluster_name_arn" {
  value       = aws_ecs_cluster.cluster.arn
  description = "The Amazon Resource Name (ARN) that identifies the cluster"
}


