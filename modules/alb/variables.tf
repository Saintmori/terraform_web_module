variable "env" {
  type    = string
  default = "dev"
}
variable "stage" {
  type    = string
  default = "nonprod"
}
variable "region" {
  type    = string
  default = "ue1"
}
variable "project" {
  type    = string
  default = "cat"
}
variable "app_port" {
  type    = number
  default = 80
}
variable "vpc_id" {
  type = string
  description = "this is the vpc id of the vpc root module"
}
variable "aws_private_subnet" {
  type = list(string)
  description = "this is the private subnets from the vpc root module"
}