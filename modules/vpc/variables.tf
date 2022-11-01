variable "env" {
  type = string
  default = "dev"
  description = "This is the environment variable"
}
variable "region" {
  type = string
  default = "ue1"
  description = "This is the region for deployment of the resource"
}
variable "stage" {
  type = string
  default = "nonprod"
  description = "This is the stage varibale"
}
variable "project" {
  type = string
  default = "spider"
  description = "This is the project name"
}
variable "dev_vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
  description = "This is the cidr block for the dev custom vpc"
}
variable "qa_vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
  description = "This is the cidr block for the qa custom vpc"
}
variable "public_subnet_ciders" {
  type        = list(string)
  description = "This is the ciders for the public subnet"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
variable "AZs" {
  type        = list(string)
  description = "These are the list of the AZs for the subnets"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "private_subnet_ciders" {
  type        = list(string)
  description = "This is the ciders for the private subnet"
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}