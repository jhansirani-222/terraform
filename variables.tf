#var precedence
#1.commandline
#2.vars-file.tfvars
#3.terraform.tfvars
#4.environment vars
#5.prompt
variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "from_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "tags" {
    type = map
    default = {
       Name = "Hello Terraform"
    }
}