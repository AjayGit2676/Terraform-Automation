terraform {
  backend "s3" {
    bucket = "mydev-project-terraform-sample-batch-2676"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
