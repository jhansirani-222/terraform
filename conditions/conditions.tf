resource "aws_instance" "example" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = var.instance_name == "MONGODB" ? "t3.small" : "t3.micro" 
  #vpc_security_group_ids = ["aws_security_group.roboshop-all.id"]

  tags = var.tags
}

# if var.instance_name is mongodb then it is t3.small otherwise t3.micro