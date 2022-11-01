variable "env" {
  type        = string
  description = "this variable represents the environment"
  default     = "dev"
}
variable "project" {
  type        = string
  description = "This is the project name"
  default     = "cat"
}
variable "region" {
  type        = string
  description = "This is the region for the resource"
  default     = "ue1"
}
variable "stage" {
  type        = string
  description = "This is the stage"
  default     = "nonprod"
}
variable "dev_instance_type" {
  type        = string
  description = "this is the type of the instance for the lc"
  default     = "t1.micro"
}
variable "qa_instance_type" {
  type        = string
  description = "this is the type of the instance for the lc"
  default     = "t2.micro"
}
variable "dev_max_size" {
  type        = number
  description = "this is the max number of instances"
  default     = 5
}
variable "dev_min_size" {
  type        = number
  description = "this is the minimum number of instances"
  default     = 2
}
variable "dev_desired_capacity" {
  type        = number
  description = "this is the desired capacity"
  default     = 2
}
variable "qa_max_size" {
  type        = number
  description = "this is the max number of instances"
  default     = 5
}
variable "qa_min_size" {
  type        = number
  description = "this is the minimum number of instances"
  default     = 2
}
variable "qa_desired_capacity" {
  type        = number
  description = "this is the desired capacity"
  default     = 2
}
variable "force_delete" {
  type        = bool
  description = "this is the force delete option"
  default     = true
}
variable "aws_public_subnets" {
  type = list(string)
  description = "This is the subnets of the asg"
}
variable "aws_private_subnet" {
  type = list(string)
  description = "this is the private subnets "
}
variable "tg_arn" {
    type = string
    description = " this is the arn of the target group"
}
variable "vpc_id" {
  type = string
  description = "this is the id of the vpc"
}