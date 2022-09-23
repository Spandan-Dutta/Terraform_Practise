terraform {
  backend "s3" {
    bucket = "terraform-data-amit-1"
    key    = "terraform/data/statefile/"
    region = "ap-south-1"
  }
}
