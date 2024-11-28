terraform {
    backend "s3" {
        bucket = "your-enterprise-tf-state-bucket"
        key    = "ec2/terraform.tfstate"
        region = "us-east-2"
        dynamodb_table = "new-tf-table"
        encrypt = true
    }
}
