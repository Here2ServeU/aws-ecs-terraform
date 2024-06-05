# Defining the Provider
provider "aws" {
  region = "us-east-1"  # Choose your preferred region
}

# Creating the cluster
resource "aws_ecs_cluster" "my_cluster" {
  name = "my-cluster"
}
