resource "aws_ecs_service" "worker" {
  name            = "rengo-dev-service"
  cluster         = aws_ecs_cluster.ecs_cluster.id
  task_definition = aws_ecs_task_definition.task_definition.arn
  launch_type       = "FARGATE"
  desired_count   = 1
}