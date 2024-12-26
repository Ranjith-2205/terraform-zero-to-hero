/*variable "us-east-1-azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]
}*/

variable "aws_region" {
  default = "us-east-1"
}


variable "instance_type" {
  type = map(string)
  default = {
    dev     = "t2.micro"
    staging = "t2.nano"
  }

}
