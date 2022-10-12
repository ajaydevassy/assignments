# Devops-Assignment

Infrastructure Automation Using Terraform

### Resources need to be created / installed :

* Custom VPC

* 2 Subnets (Public)

* 2 Subnet (Private)

* Security Group

* Elastic IP

* NAT Gateway

* Internet Gateway

* Route Table

* Application Load Balancer

* Route53 record set

Please make sure to set up appropriate aws environment variables  in your AWS shared credentials file.

#### common root module
 
Run this in the common directory before modifying the terraform state.

```bash
terraform init
```

## usage_operation

To import the module add the following to the environment main.tf file:


You can override the value with terraform.tfvars or variable.tf files

Below mentioned .var are required**

```bash
module "vpc" {
  source = "./Devops-assignment1"

  region = var.region
  vpc_cidr_block = var.vpc_cidr_block
  cidr-public = var.cidr-public
  cidr-private = var.cidr-private
  az = var.az
  certificate_arn = var.certificate_arn
  bucket = var.bucket
  key =var.key
  bucket-region = var.bucket-region

}
```
# example usage

```bash
module "vpc" {
  source = "../Devops-assignment1/"

  cidr-private = ["10.0.13.0/24", "10.0.14.0/24"]
  bucket = "test-backend-dev"
}  
```


