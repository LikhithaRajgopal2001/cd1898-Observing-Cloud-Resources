terraform {
   backend "s3" {
     bucket = "terraform-state-monitoring-1" # Replace it with your S3 bucket name
     key    = "terraform/terraform.tfstate"
     region = "us-east-1"  # Update to your desired region
   }
 }

 provider "aws" {
   region = "us-east-1"

   default_tags {
     tags = local.tags
   }
 }
