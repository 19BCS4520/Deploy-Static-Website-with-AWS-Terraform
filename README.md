# Deploy Static Website with AWS & Terraform

This project demonstrates how to deploy a static website to AWS S3 and serve it securely via CloudFront using Terraform.

## Features
- Creates an S3 bucket for static website hosting
- Uploads website files (HTML, CSS, JS) to S3
- Configures S3 bucket policies for security
- Sets up CloudFront distribution for CDN and HTTPS
- Blocks all public S3 access except via CloudFront

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account with appropriate permissions
- AWS credentials configured (via environment variables or AWS CLI)

## File Structure
```
.
├── backend.tf
├── main.tf
├── outputs.tf
├── provider.tf
├── terraform.tfstate
├── variables.tf
└── www/
    ├── index.html
    ├── script.js
    └── style.css
```

## Usage
1. **Clone the repository:**
   ```sh
   git clone https://github.com/<your-username>/Deploy-Static-Website-with-AWS-Terraform.git
   cd Deploy-Static-Website-with-AWS-Terraform
   ```
2. **Initialize Terraform:**
   ```sh
   terraform init
   ```
3. **Review and edit variables:**
   - Edit `variables.tf` to set your desired bucket prefix and other variables.
4. **Plan the deployment:**
   ```sh
   terraform plan
   ```
5. **Apply the deployment:**
   ```sh
   terraform apply
   ```
6. **Access your website:**
   - The CloudFront domain will be output after apply. Open it in your browser.

## Notes
- The `.terraform/` directory is excluded from version control via `.gitignore`.
- Make sure your AWS user has permissions for S3, CloudFront, and IAM as required by the resources in `main.tf`.
- If you are in a restricted AWS environment (sandbox), you may need to manually create the S3 bucket and reference it as a data source.

## Clean Up
To destroy all resources created by this project:
```sh
terraform destroy
```


