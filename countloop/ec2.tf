resource "aws_instance" "example" {
  count = 11
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  #vpc_security_group_ids = ["aws_security_group.roboshop-all.id"]

  tags = {
    Name = var.instance_names[count.index]
  }
}