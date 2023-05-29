variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS Profile"
  type        = string
  default     = "terraform"
}

variable "bucket_s3" {
  description = "Name of the bucket"
  type        = string
  default     = "terraform"
}

variable "bucket_tags" {
  description = "Tags for the bucket"
  type        = map(string)
  default = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}

variable "instance_ami" {
  description = "AMI to use for the instance"
  type        = string
  default     = "ami-0715c1897453cabd1"
}

variable "instance_type" {
  description = "Type of instance"
  type        = string
  default     = "t2.micro"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "instance_tags" {
  description = "Tags for the instance"
  type        = map(string)
  default = {
    Name    = "terraform-server"
    Project = "Terraform"
    By      = "Breno"
  }
}