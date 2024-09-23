

/*
  hash_key = "LockID"
  name     = "poc1_table"
  attribute {
    name = "LockID"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}*/

resource "aws_instance" "ec2_example" {
    count=2
    ami = "ami-0ebfd941bbafe70c6"
    instance_type = "t2.micro"
    vpc_security_group_ids = [ "${aws_security_group.webAWS.id}" ]
    subnet_id = "${aws_subnet.aw_pub_sub1.id}"
 
    tags = {
      Name = "EC2 Instance with remote state"
    }
}

/*terraform {
    backend "s3" {
        bucket = "poc-terraformpoc-state"
        key    = "poc/vpc/terraform.tfstate"        
	region     = "us-east-1"
       dynamodb_table  = "poc1_table"
    }
} */
