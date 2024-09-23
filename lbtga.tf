resource "aws_lb_target_group_attachment" "test3" {
  target_group_arn = aws_lb_target_group.test2.arn
  target_id        = aws_instance.airworks.id
  port             = 3000
}
# resource "aws_instance" "myec2aw2" {
#   ami = data.aws_ami.examplami.image_id
#   key_name = var.key_name
#   instance_type = var.instance_type

  
#   tags = {
#     "Name" = "qa-airworks-linuxami "
#       }
# }
# data "aws_ami" "examplami" {
#   most_recent      = true
#   owners           = var.account

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }
  
#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }
resource "aws_instance" "airworks" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.aw_pub_sub1.id

  tags = {
    Name = "qa-linux-airworks"
  }
}