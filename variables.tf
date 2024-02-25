variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "key_name" {
  description = "The name of the key pair"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}
