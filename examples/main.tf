module "ec2" {
  source = "git::https://github.com/jrdalino/aws-ec2-terraform.git?ref=main"
  
  # General
  aws_region  = var.aws_region
  aws_account = var.aws_account
  aws_role    = var.aws_role

  # Tagging
  namespace       = var.namespace
  bounded_context = var.bounded_context
  environment     = var.environment

  # Elastic IP
  aws_eip_name = var.aws_eip_name

  # Key Pair
  aws_key_pair_name       = var.aws_key_pair_name
  aws_key_pair_public_key = var.aws_key_pair_public_key

  # Security Group
  aws_security_group_name   = var.aws_security_group_name
  aws_security_group_vpc_id = var.aws_security_group_vpc_id

  # IAM Role & Policy
  aws_iam_role_name        = var.aws_iam_role_name
  aws_iam_role_policy_name = var.aws_iam_role_policy_name

  # EC2 Instance
  aws_instance_ami           = var.aws_instance_ami
  aws_instance_instance_type = var.aws_instance_instance_type
  aws_instance_subnet_id     = var.aws_instance_subnet_id
  aws_instance_name          = var.aws_instance_name
}