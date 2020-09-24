provider aws {
  region = "eu-west-1"
}

module "ecs-cluster" {

  source             = "../"
  cluster_name       = "ecs-cluster"
  container_insights = true
  tags = {

    "Name" : "ECS_CLUSTER",
    "Owner" : "ELSON",
    "Managed" : "Terraform"
  }

}
