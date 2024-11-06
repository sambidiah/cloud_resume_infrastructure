# Cloud Resume Infrastructure

## Project Summary
This repository contains the infrastructure as code (IaC) configuration for deploying the AWS resources required for the Cloud Resume Challenge. The configuration is managed using Terraform, ensuring a consistent, repeatable setup.

## Project Overview
This infrastructure supports both the frontend static site and other resources for the Cloud Resume Challenge. The configuration includes an S3 bucket for static website hosting, with tags to identify resources as part of this project.

## Key Files
- **`main.tf`**: Contains the Terraform code for provisioning the required AWS resources, including an S3 bucket for static website hosting.

## Resources Deployed

### AWS Provider
The configuration uses the `aws` provider to manage resources in the `us-east-1` region.
- **Provider Version**: `5.74.0` (specified to ensure compatibility)

### S3 Bucket for Static Website Hosting
- **Bucket Name**: `samuelnielsen.com`
- **Tags**:
  - `Name`: "Static Website Bucket"
  - `ProvisionedBy`: "Terraform"
  - `Environment`: "Prod"
  - `Project`: "Cloud Resume Challenge"
- **Static Website Configuration**:
  - **Index Document**: Configured to use `index.html` as the entry document.

### Additional Resources (Commented Out)
The following resources are included in the configuration but are currently commented out. They can be activated if needed for further testing or development:
- **EC2 Instances**:
  - Resource: `aws_instance` (two instances of `t2.micro` are defined with specific tags).
  - **Tags**: `Name`, `ProvisionedBy`, `Environment`, `Project`.
- **Test S3 Bucket (Static Website)**:
  - Additional S3 bucket configuration (`test-website-static-bucket-sam-nielsen`) with tags similar to the main static website bucket.
  - **Public Access Block**: Public access settings configured to allow public read access.
  - **Bucket Policy**: Policy attached to allow public `GetObject` permissions.
  - **Website Configuration**: Configured for static website hosting with `index.html` as the entry document.

## Deployment Instructions
To deploy the infrastructure, run these Terraform commands in the project directory:

1. **Initialize Terraform**:
   ```bash
   terraform init
