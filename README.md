
Project Title: Automating AWS Infrastructure with Jenkins, Terraform & GitHub

Project Overview:

This project is all about making cloud infrastructure deployment easy, fast, and reliable. The idea was to set up a complete CI/CD pipeline where developers can simply write infrastructure code using Terraform in Visual Studio Code, push it to GitHub, and have Jenkins take care of everything else — from checking the code to spinning up resources in AWS automatically.

It eliminates manual steps, reduces errors, and speeds up the entire deployment process.

___________________________________
Architecture diagram

![image alt](https://github.com/405found404/Devops-Projects/blob/72a66715489fb5a4d3c708a37b6ff40d8037b2e4/pics.jpg)


How It Works:

1. Write Code: Developers write Terraform scripts locally using VS Code.


2. Push to GitHub: Once ready, the code is pushed to a GitHub repository.


3. Trigger Pipeline: Jenkins detects the push and starts the pipeline.


4. Terraform in Action:

Jenkins pulls the code.

Initializes Terraform.

Applies or destroys infrastructure based on what’s selected in the pipeline.



5. AWS Resources:
   
  EC2 instances (or other services) are created or removed in the selected region — all without any manual work in the AWS console.


Tech Stack:

Visual Studio Code – Writing and editing Terraform code.

GitHub – Code repository and version control.

Jenkins – Automation server to run pipelines.

Terraform – The IaC tool to describe infrastructure.

AWS – Cloud platform where the resources live.


