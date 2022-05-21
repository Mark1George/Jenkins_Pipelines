terraform {
  backend "s3" {
    bucket = "teesting-terraform"
    key    = "status/"
    region = "eu-central-1"
    dynamodb_table = "testing"
    profile = "default"
  }
  
}