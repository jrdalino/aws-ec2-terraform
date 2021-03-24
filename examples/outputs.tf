# Elastic IP
output "aws_eip_id" {
  value       = module.ec2.aws_eip_id
  description = "Contains the EIP allocation ID."
}

output "aws_eip_private_ip" {
  value       = module.ec2.aws_eip_private_ip
  description = "Contains the private IP address (if in VPC)."
}

output "aws_eip_private_dns" {
  value       = module.ec2.aws_eip_private_dns
  description = "The Private DNS associated with the Elastic IP address (if in VPC)."
}

output "aws_eip_associate_with_private_ip" {
  value       = module.ec2.aws_eip_associate_with_private_ip
  description = "Contains the user specified private IP address (if in VPC)."
}

output "aws_eip_public_ip" {
  value       = module.ec2.aws_eip_public_ip
  description = "Contains the public IP address."
}

output "aws_eip_public_dns" {
  value       = module.ec2.aws_eip_public_dns
  description = "Public DNS associated with the Elastic IP address."
}

output "aws_eip_instance" {
  value       = module.ec2.aws_eip_instance
  description = "Contains the ID of the attached instance."
}

output "aws_eip_network_interface" {
  value       = module.ec2.aws_eip_network_interface
  description = "Contains the ID of the attached network interface."
}

output "aws_eip_public_ipv4_pool" {
  value       = module.ec2.aws_eip_public_ipv4_pool
  description = "EC2 IPv4 address pool identifier (if in VPC)."
}

output "aws_eip_carrier_ip" {
  value       = module.ec2.aws_eip_carrier_ip
  description = "The carrier IP address."
}

output "aws_eip_customer_owned_ipv4_pool" {
  value       = module.ec2.aws_eip_customer_owned_ipv4_pool
  description = "The ID of a customer-owned address pool. For more on customer owned IP addressed check out Customer-owned IP addresses guide"
}

output "aws_eip_customer_owned_ip" {
  value       = module.ec2.aws_eip_customer_owned_ip
  description = "Customer owned IP."
}

output "aws_eip_domain" {
  value       = module.ec2.aws_eip_domain
  description = "Indicates if this EIP is for use in VPC (vpc) or EC2 Classic (standard)."
}

# Elastic IP Association
output "aws_eip_association_allocation_id" {
  value       = module.ec2.aws_eip_association_allocation_id
  description = "As above"
}

output "aws_eip_association_instance_id" {
  value       = module.ec2.aws_eip_association_instance_id
  description = "As above"
}

output "aws_eip_association_network_interface_id" {
  value       = module.ec2.aws_eip_association_network_interface_id
  description = "As above"
}

output "aws_eip_association_private_ip_address" {
  value       = module.ec2.aws_eip_association_private_ip_address
  description = "As above"
}

output "aws_eip_association_public_ip" {
  value       = module.ec2.aws_eip_association_public_ip
  description = "As above"
}

# Key Pair 
output "aws_key_pair_id" {
  value       = module.ec2.aws_key_pair_id
  description = "The key pair name."
}

output "aws_key_pair_arn" {
  value       = module.ec2.aws_key_pair_arn
  description = "The key pair ARN."
}

output "aws_key_pair_key_name" {
  value       = module.ec2.aws_key_pair_key_name
  description = "The key pair name."
}

output "aws_key_pair_key_pair_ids" {
  value       = module.ec2.aws_key_pair_key_pair_ids
  description = "The key pair ID."
}

output "aws_key_pair_fingerprint" {
  value       = module.ec2.aws_key_pair_fingerprint
  description = "The MD5 public key fingerprint as specified in section 4 of RFC 4716."
}

# Security Groups
output "aws_security_group_id" {
  value       = module.ec2.aws_security_group_id
  description = "The ID of the security group"
}

output "aws_security_group_arn" {
  value       = module.ec2.aws_security_group_arn
  description = "The ARN of the security group"
}

output "aws_security_group_vpc_id" {
  value       = module.ec2.aws_security_group_vpc_id
  description = "The VPC ID."
}

output "aws_security_group_owner_id" {
  value       = module.ec2.aws_security_group_owner_id
  description = "The owner ID."
}

output "aws_security_group_name" {
  value       = module.ec2.aws_security_group_name
  description = "The name of the security group"
}

output "aws_security_group_description" {
  value       = module.ec2.aws_security_group_description
  description = "The description of the security group"
}

output "aws_security_group_ingress" {
  value       = module.ec2.aws_security_group_ingress
  description = "The ingress rules."
}

output "aws_security_group_egress" {
  value       = module.ec2.aws_security_group_egress
  description = "The ingress rules."
}

# IAM Role 
output "aws_iam_role_arn" {
  value       = module.ec2.aws_iam_role_arn
  description = "Amazon Resource Name (ARN) specifying the role."
}

output "aws_iam_role_create_date" {
  value       = module.ec2.aws_iam_role_create_date
  description = "Creation date of the IAM role."
}

output "aws_iam_role_id" {
  value       = module.ec2.aws_iam_role_id
  description = "Name of the role."
}

output "aws_iam_role_name" {
  value       = module.ec2.aws_iam_role_name
  description = "Name of the role."
}

output "aws_iam_role_unique_id" {
  value       = module.ec2.aws_iam_role_unique_id
  description = "Stable and unique string identifying the role."
}

# IAM Role Policy
output "aws_iam_role_policy_id" {
  value       = module.ec2.aws_iam_role_policy_id
  description = "The role policy ID, in the form of role_name:role_policy_name."
}

output "aws_iam_role_policy_name" {
  value       = module.ec2.aws_iam_role_policy_name
  description = "The name of the policy."
}

output "aws_iam_role_policy_policy" {
  value       = module.ec2.aws_iam_role_policy_policy
  description = "The policy document attached to the role."
}

output "aws_iam_role_policy_role" {
  value       = module.ec2.aws_iam_role_policy_role
  description = "The name of the role associated with the policy."
}

# EC2 Instance
output "aws_instance_arn" {
  value       = module.ec2.aws_instance_arn
  description = "The ARN of the instance."
}

output "aws_instance_instance_state" {
  value       = module.ec2.aws_instance_instance_state
  description = "The state of the instance. One of: pending, running, shutting-down, terminated, stopping, stopped."
}

output "aws_instance_outpost_arn" {
  value       = module.ec2.aws_instance_outpost_arn
  description = "The ARN of the Outpost the instance is assigned to."
}

output "aws_instance_password_data" {
  value       = module.ec2.aws_instance_password_data
  description = "Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if get_password_data is true. Note that this encrypted value will be stored in the state file, as with all exported attributes."
}

output "aws_instance_primary_network_interface_id" {
  value       = module.ec2.aws_instance_primary_network_interface_id
  description = "The ID of the instance's primary network interface."
}

output "aws_instance_private_dns" {
  value       = module.ec2.aws_instance_private_dns
  description = "The private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC."
}

output "aws_instance_public_dns" {
  value       = module.ec2.aws_instance_public_dns
  description = "The public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC."
}

output "aws_instance_public_ip" {
  value       = module.ec2.aws_instance_public_ip
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use public_ip as this field will change after the EIP is attached."
}