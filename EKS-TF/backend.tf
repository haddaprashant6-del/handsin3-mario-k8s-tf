terraform {
  backend "s3" {
    bucket         = "test32143"  # Ensure this is your actual S3 bucket
    key            = "eks/terraform.tfstate"  # Standardized directory naming
    region         = "ap-south-1"  # Changed to match provider region
    encrypt        = true  # Ensures state file is encrypted
    dynamodb_table = "terraform-lock"  # Enables state locking to prevent conflicts
  }
}
