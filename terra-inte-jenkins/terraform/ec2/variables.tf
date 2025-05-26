variable "region" {
  default = "us-east-1"
}

variable "ami" {
  description = "Amazon Machine Image"
  default     = "ami-id"  # Replace with valid AMI in your region
}

variable "instance_type" {
  default = "t2.micro"
}
