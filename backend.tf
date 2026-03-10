terraform {
  backend "s3" {
    bucket = "aws365.shop-remote"
    key    = "tfstate"
    region = "us-east-1"
  }
}
