terraform {
  backend "s3" {
    bucket = "aws365.shop-remote"
    key    = "tfstate"
    region = "us-east-1"
    dynamodb_table = "state-lock" 
  }
}
