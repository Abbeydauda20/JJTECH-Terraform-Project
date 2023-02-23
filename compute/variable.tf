

variable "ami" {
  description = "variable for my prodserver ami"
  type        = string
  default     = "ami-0dfcb1ef8550277af"
  sensitive   = false
}

variable "instance_type" {
  description = "variable for my prodserver instance type"
  type        = list(any)
  default     = ["t2.micro", "t3.micro", "t2.medium"]
  sensitive   = false
}

variable "availability_zone" {
  description = "variable for my prodserver az"
  type        = list(any)
  default     = ["us-east-1b", "us-east-1b", "us-east-1c"]
  sensitive   = false
}

variable "instance_tags" {
  description = "variable for my prodserver instance tags"
  type        = map(any)
  default = {
    Name        = "webserver"
    Environment = "Prod"
    Project     = "JJTech-terraform-Project"
  }
}

variable "associate_public_ip_address" {
  description = "variable for my prodserver associate public ip. expect true or false"
  type        = bool
  default     = false
}


