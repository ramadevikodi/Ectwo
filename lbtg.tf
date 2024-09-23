resource "aws_lb_target_group" "test2" {
  name     = "tf-example-lb-tg-aw"
  port     = 3000
  protocol = "HTTP"
  vpc_id   = aws_vpc.aw_vpc.id
}
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}