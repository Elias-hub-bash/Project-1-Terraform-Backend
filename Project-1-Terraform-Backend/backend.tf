terraform {
  backend "s3" {
    bucket = "boyuiboys-s3-demo-boyotech"
    key    = "users/ngora/onedrive/terraform.tfstate"
    region = "us-east-1"
  }
}
