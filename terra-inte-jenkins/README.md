Project Title: Automating AWS Infrastructure with Jenkins, Terraform & GitHub

Project Overview:

This project is all about making cloud infrastructure deployment easy, fast, and reliable. The idea was to set up a complete CI/CD pipeline where developers can simply write infrastructure code using Terraform in Visual Studio Code, push it to GitHub, and have Jenkins take care of everything else — from checking the code to spinning up resources in AWS automatically.

It eliminates manual steps, reduces errors, and speeds up the entire deployment process.

Architecture diagram

![image alt](https://github.com/405found404/Devops-Projects/blob/aad6549d5bec0a10e8a824f66001294b0cfeb5fb/pics.jpg)

How It Works:

Write Code: Developers write Terraform scripts locally using VS Code.

Push to GitHub: Once ready, the code is pushed to a GitHub repository.

Trigger Pipeline: Jenkins detects the push and starts the pipeline.

Terraform in Action:

Jenkins pulls the code.

Initializes Terraform.

Applies or destroys infrastructure based on what’s selected in the pipeline.

AWS Resources:
EC2 instances (or other services) are created or removed in the selected region — all without any manual work in the AWS console.

Tech Stack:

Visual Studio Code – Writing and editing Terraform code.

GitHub – Code repository and version control.

Jenkins – Automation server to run pipelines.

Terraform – The IaC tool to describe infrastructure.

AWS – Cloud platform where the resources live.
