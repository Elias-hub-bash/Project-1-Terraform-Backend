provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "jayden" {
  instance_type = "t2.micro"
  ami           = "ami-05b10e08d247fb927"
  subnet_id     = "subnet-027088d34fbd9aa97"
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "boyuiboys-s3-demo-boyotech-${random_string.suffix.result}"
}



/*resource "aws_s3_bucket" "s3_bucket" {
  bucket = "boyuiboys-s3-demo-boyotech"

}

/*resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}*/