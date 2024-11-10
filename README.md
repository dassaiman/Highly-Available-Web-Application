# Highly Available Web Application on AWS with Terraform

This project deploys a highly available web application architecture on AWS using Terraform. It leverages key AWS services including VPC, Auto Scaling Groups, Elastic Load Balancer (ALB), and EC2 instances. The infrastructure is fully modular, making it easy to modify, scale, or redeploy in different environments.

---

## Table of Contents
- [Project Overview](#project-overview)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- 


---

## Project Overview
This Terraform configuration deploys a resilient and scalable web application on AWS, featuring:
- **VPC** for isolated networking
- **Application Load Balancer (ALB)** for distributing traffic
- **Auto Scaling Group** for managing EC2 instances to ensure high availability

---


## Project Structure

```bash
highly_available_web_app/
├── main.tf               # Root configuration
├── variables.tf          # Root variables
├── outputs.tf            # Root outputs
├── provider.tf           # AWS provider configuration
├── modules/              # Directory for modularized resources
│   ├── vpc/              # VPC module
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── ec2/              # EC2/Auto Scaling module
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── alb/              # ALB module
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
└── terraform.tfvars      # Customizable variable definitions for deployment

```

---

## Customization

Modify values in **variables.tf** or **terraform.tfvars** to adjust configurations like instance type, AMI ID, or VPC CIDR block to fit specific deployment needs.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with any improvements.

---
















