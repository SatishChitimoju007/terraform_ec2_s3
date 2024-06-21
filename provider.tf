terraform {
  backend "s3" {
    bucket = "sc-s3terraformstatefile"
    key = "global/mystatefile/terraform.tfstate"
    region = "us-east-1"
    encrypt=true
  }
}
