# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."
}

variable "aws_role" {
  type        = string
  description = "Used AWS Role."
}

# Tagging
variable "namespace" {
  type        = string
  description = "Namespace."
}

variable "bounded_context" {
  type        = string
  description = "Bounded Context."
}

variable "environment" {
  type        = string
  description = "Environment."
}

# Elastic IP
variable "aws_eip_name" {
  type        = string
  description = "EIP Name"
}

# Key Pair
variable "aws_key_pair_name" {
  type        = string
  description = "Key Pair Name"
}

variable "aws_key_pair_public_key" {
  type        = string
  description = "Public Key"
}

# Security Group
variable "aws_security_group_name" {
  type        = string
  description = "Security Group Name"
}

variable "aws_security_group_vpc_id" {
  type        = string
  description = "VPC ID"
}

# IAM Role & Policy
variable "aws_iam_role_name" {
  type        = string
  description = "IAM Role Name"
}

variable "aws_iam_role_policy_name" {
  type        = string
  description = "IAM Role Policy Name"
}

# EC2 Instance
variable "aws_instance_ami" {
  type        = string
  description = "EC2 Instance AMI"
}

variable "aws_instance_instance_type" {
  type        = string
  description = "EC2 Instance Type"
}

variable "aws_instance_subnet_id" {
  type        = string
  description = "EC2 Instance Subnet Id"
}

variable "aws_instance_name" {
  type        = string
  description = "EC2 Instance Name"
}