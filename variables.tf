variable "access_key" {}
variable "secret_key" {}
variable "region" { default = "eu-west-3" }

variable amis {
  type = "map"
  default = {
    "eu-west-3" = "ami-20ee5e5d"
  }
}
variable "key_name" {}
variable "subnet_id" {}
variable "vpc_security_group_ids" { type = "list" }
