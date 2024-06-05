# Creating the Services for the 3 Apps: App1, App2, and App3. 

resource "aws_ecs_service" "app1_service" {
  name            = "app1-service"
  cluster         = aws_ecs_cluster.my_cluster.id
  task_definition = aws_ecs_task_definition.apache_task.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = ["your-subnet-id"]
    assign_public_ip = true
    security_groups  = ["your-security-group-id"]
  }
}

resource "aws_ecs_service" "app2_service" {
  name            = "app2-service"
  cluster         = aws_ecs_cluster.my_cluster.id
  task_definition = aws_ecs_task_definition.nginx_task.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = ["your-subnet-id"]
    assign_public_ip = true
    security_groups  = ["your-security-group-id"]
  }
}

resource "aws_ecs_service" "app3_service" {
  name            = "app3-service"
  cluster         = aws_ecs_cluster.my_cluster.id
  task_definition = aws_ecs_task_definition.nginx_task.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = ["your-subnet-id"]
    assign_public_ip = true
    security_groups  = ["your-security-group-id"]
  }
}
