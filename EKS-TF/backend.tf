terraform {
  backend "s3" {
    bucket         = "test321431"  # Ensure this is your actual S3 bucket name
    key            = "eks/terraform.tfstate"  # Standardized directory naming
    region         = "us-east-1"  # Changed to match provider region
    encrypt        = true  # Ensures state file is encrypted
    dynamodb_table = "Terraformmmmq_table"  # Enables state locking to prevent conflicts
  }
}
