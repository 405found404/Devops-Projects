[Architecture Diagram]

![image alt](https://github.com/405found404/Devops-Projects/blob/02b8b357ebdc6000045d4f7c5ae7547e5a20fcfd/terraform-ansible/project1.jpg)

📘 Project Overview

This project demonstrates an automated CI/CD pipeline that provisions infrastructure on AWS using Terraform, orchestrated by Jenkins triggered via GitHub webhooks. It sets up a master EC2 instance and three slave instances, installs Apache2 on the slaves, and deploys a portfolio website to each.

🧰 Technologies Used

GitHub: Version control and webhook integration

Jenkins: Automation server for orchestrating the pipeline

Terraform: Infrastructure as Code (IaC) tool for provisioning AWS resources

AWS EC2: Virtual servers for hosting Jenkins and the portfolio website

Apache2: Web server installed on slave instances

Ansible (Dynamic Inventory): For managing configurations and deployments

🔧 Infrastructure Setup

GitHub Webhook Configured to trigger the Jenkins pipeline on code push.

Jenkins Pipeline

Pulls the latest code from GitHub

Executes Terraform scripts to provision infrastructure

Terraform
Creates one master EC2 instance (Jenkins server)

Creates three slave EC2 instances

Generates a dynamic inventory file capturing private IPs of slave instances

Provisioning
Uses remote-exec provisioner to SSH into slave instances

Installs Apache2 web server on each slave

Deploys the portfolio website using file provisioner
