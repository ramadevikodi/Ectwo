resource "aws_lb" "test" {
  name               = "qa-https-server1"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.webAWS.id]
  #subnets            = [for subnet in aws_subnet.public : subnet.id]
  subnet_mapping {
    subnet_id     = aws_subnet.aw_pub_sub1.id    
  }

  subnet_mapping {
    subnet_id     = aws_subnet.aw_pub_sub2.id
  }


  enable_deletion_protection = false

#   access_logs {
#     bucket  = aws_s3_bucket.lb_logs.bucket
#     prefix  = "test-lb"
#     enabled = true
#   }

  tags = {
    Environment = "qa"
  }
}