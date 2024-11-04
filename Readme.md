# Automated EC2 Instance Provisioning with Terraform

## Overview
This project utilizes Terraform, an open-source Infrastructure as Code(IaC) tool, to automate the provisioning EC2 instances across multiples environments, enhancing efficiency and consistency compared to maual setups through the AWS management console.

## MVPS
 - Terraform workspaces.
 - Remote backend.
 - Modular Architecture.
 - Dynamic configuration.
   
### Workspaces are used when managing multiple environments in a single infranstructure.
Workspaces enable the management of different environments using a single Terraform configuration.
In this project we have 3 environments; 
 - Development(dev): instance type is t2.micro
 - Staging(stage): t2.medium instance.
 - Production(prod): t2.xlarge instance.
 - To create a new workspace run ```terraform workspace new <workspace_name>```.
 - To switch to a particular workspace run ```terraform workspace select <workspace_name>```.

### Remote Backend
To safeguard sensitive information, the project implements a remote backend using an S3 bucket.
This setup ensures that the terraform state file is not stored locally but securely in S3, facilitating collaboration and preventing data loss.

### Modules
For efficient resource management, the project organizes resources into modules.
The EC2 module is referenced in the main.tf file, allowing for clean and maintainable code while adhering to the principle of separation of concerns.

### Input and Output Variable
The project employs input and output variables to parameterize critical setting such as AMI and instance type. This approach enhances the flexibility of the configuration and simplifies adjustments without modifying the core codebases.
