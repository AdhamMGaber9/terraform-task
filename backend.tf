terraform {
  backend "s3" {
    bucket         = "terrafrom-state-adham-s3"
    key            = "terrafrom.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terrafrom-state-table"
  }
}
