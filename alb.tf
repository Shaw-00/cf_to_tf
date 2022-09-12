resource "aws_lb" "main" {
  name               = "rengo-dev-elb"
  internal           = false
  load_balancer_type = "application"
  security_groups      = [aws_security_group.ecs_sg.id]
  subnets            = aws_subnet.pub_subnet.id

  enable_deletion_protection = false
}

resource "aws_alb_target_group" "main" {
  name        = "Rengo-Dev-ELBTargetGroup"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    healthy_threshold   = "2"
    interval            = "10"
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = "5"
    path                = "/api/v1"
    unhealthy_threshold = "2"
  }
  depends_on = ["aws_lb.main"]
}