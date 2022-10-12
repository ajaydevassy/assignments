# Assignement -1 (terraform)

Please clone this repo "https://github.com/ajaydevassy/assignments.git"

##usage

```bash
module "vpc" {
  source = "/Devops-assignment1"

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
  source = "/Devops-assignment1/"

  cidr-private = ["10.0.13.0/24", "10.0.14.0/24"]
  bucket = "test-backend-dev"
}  
```
