variable "tags" {
    type = map
    default = {
       Name = "Hello Terraform"
    }
}

variable "instance_name" {
    type = string
    default = "MONGODB"

}