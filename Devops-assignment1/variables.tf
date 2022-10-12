#-------------------------------------------------------------------------------
# Global Variables
#-------------------------------------------------------------------------------
variable "region" {
  description = "AWS region to create VPC"
  default     = "us-east-2"
}
variable "vpc_cidr_block" {
  description = "The CIDR blocks to be used for the VPC"
  default     = "10.0.0.0/16"
}
variable "cidr-public" {
  description = "The CIDR blocks to be used for the public subnets"
  type        = list(any)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "cidr-private" {
  description = "The CIDR blocks to be used for the private subnets"
  type        = list(any)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "az" {
  description = "The AZs that the VPC will use"
  type        = list(any)
  default     = ["us-east-2a", "us-east-2b"]
}
# Certificate ARN for HTTPS
variable "certificate_arn" {
  description = "Enter the certificate ARN for HTTPS"
  default     = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"
}

#configuration for backend "s3"

variable "bucket" {
  description = "enter the bucket name"
  default     = "my-tf-bucket-for-test"
}

variable "key" {

  description = "Please enter the folder to be used and statefile name"
  default     = "network/demo.tfstate"

}
variable "bucket-region" {
  description = "Default region"
  default     = "us-east-2"
}

