provider "aws" {
    region = "ap-southest-1"  
}

terraform {
  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key = "github-demo.tfstate"
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "name" {
     bucket_prefix =  "kamsani-github-demo-bucket"
}  
# 3rd try