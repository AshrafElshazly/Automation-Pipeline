# Cloud-DevOps-CI/CD

This repository contains a CI/CD workflow for deploying a Flask application to AWS infrastructure using Terraform, Docker, and GitHub Actions.

## Workflow Overview

### Provision Infrastructure

- **Name:** Provision Infrastructure
- **Environment:** Production
- **Steps:**
  - Authenticate with AWS
  - Checkout Repository
  - Set up Terraform
  - Terraform Init
  - Terraform Plan
  - Terraform Apply
  - Fetch Instance IP

### Build and Test

- **Name:** Build and Test
- **Steps:**
  - Checkout Repository
  - Build Docker image
  - Test with unittest
  - Lint with pylint

### Release

- **Name:** Release
- **Environment:** Production
- **Steps:**
  - Authenticate with AWS
  - Login to Amazon ECR Public
  - Checkout code
  - Build, tag, and push docker image to Amazon ECR

### Deploy

- **Name:** Deploy
- **Environment:** Production
- **Steps:**
  - SSH and deploy
    - SSH into the provisioned instance
    - Configure AWS credentials
    - Pull the Docker image from Amazon ECR
    - Run the Docker container

## Prerequisites

- AWS IAM credentials with necessary permissions
- Docker Hub credentials
- SSH private key for accessing the provisioned instance
- GitHub Secrets configured with necessary values

## Setup Instructions

1. Clone this repository.
2. Configure AWS credentials, Docker Hub credentials, SSH private key, and other necessary secrets in GitHub Secrets.
3. Make sure your Terraform configurations in the `terraform/infra` directory are set up correctly for your infrastructure requirements.
4. Modify the Dockerfile and Flask application in the `app` directory according to your application needs.
5. Customize the workflow file (`./github/workflows/main.yml`) if needed.
6. Commit and push your changes to trigger the CI/CD pipeline.

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or feature requests, feel free to open an issue or a pull request.
