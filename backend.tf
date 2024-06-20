terraform {
  backend "s3" {
    bucket = "sc-s3terraformstatefile"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "sc-terraformlock-table"
  }
}
