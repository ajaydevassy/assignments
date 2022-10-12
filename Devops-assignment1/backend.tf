terraform {
  backend "s3" {
    bucket = var.bucket
    key    = var.key
    region = var.bucket-region
  }
}


/*resource "time_sleep" "wait_150_seconds" {

  create_duration = "150s"
}*/