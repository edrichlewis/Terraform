terraform {
    backend "s3" {
        bucket = "terraform-state-enterprise"
        key    = "ec2-instance/terraform.tfstate"
        region = "us-east-2"
        dynamodb_table = "terraform-lock-table"
        encrypt = true
    }
}
