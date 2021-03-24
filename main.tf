# Elastic IP
resource "aws_eip" "this" {
  instance = aws_instance.this.id
  vpc      = true
  # network_interface
  # associate_with_private_ip
  tags = {
    Name           = var.aws_eip_name
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }
  # public_ipv4_pool
  # customer_owned_ipv4_pool
  # network_border_group
}

# Elastic IP Association
resource "aws_eip_association" "this" {
  allocation_id = aws_eip.this.id
  # allow_reassociation = true
  instance_id = aws_instance.this.id
  # network_interface_id
  # private_ip_address
  # public_ip
}

# Key Pair 
resource "aws_key_pair" "this" {
  key_name = var.aws_key_pair_name
  # key_name_prefix
  public_key = var.aws_key_pair_public_key
  tags = {
    Name           = var.aws_key_pair_name
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }
}

# Security Group
resource "aws_security_group" "this" {
  name = var.aws_security_group_name
  # name_prefix
  description = "EC2 Instance Security Group"

  ingress {
    description = "Allow inbound SSH traffic from the Internet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow inbound ICMP traffic from the Internet"
    from_port   = 0
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound access to the Internet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # revoke_rules_on_delete = false

  vpc_id = var.aws_security_group_vpc_id
  tags = {
    Name           = var.aws_security_group_name
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }
}

# Instance Profile
resource "aws_iam_instance_profile" "this" {
  name = var.aws_iam_role_name
  role = aws_iam_role.this.name
}

# IAM Role
resource "aws_iam_role" "this" {
  # description
  # force_detach_policies
  # inline_policy
  # managed_policy_arns
  # max_session_duration
  name = var.aws_iam_role_name
  # name_prefix
  # path
  # permissions_boundary
  tags = {
    Name           = var.aws_iam_role_name
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "this" {
  name = var.aws_iam_role_policy_name
  role = aws_iam_role.this.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "*",
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
EOF
}

# EC2 Instance
resource "aws_instance" "this" {
  ami                         = var.aws_instance_ami
  associate_public_ip_address = true
  # availability_zone
  # cpu_core_count
  # cpu_threads_per_core
  # credit_specification
  # disable_api_termination
  # ebs_block_device
  # ebs_optimized
  # enclave_options
  # ephemeral_block_device
  # get_password_data
  # hibernation
  # host_id
  iam_instance_profile                 = aws_iam_role.this.name
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = var.aws_instance_instance_type
  # ipv6_address_count
  # ipv6_addresses
  key_name = aws_key_pair.this.key_name
  # metadata_options
  # monitoring
  # network_interface
  # placement_group
  # private_ip
  # root_block_device
  # secondary_private_ips
  # security_groups
  source_dest_check = true
  subnet_id         = var.aws_instance_subnet_id
  tags = {
    Name           = var.aws_instance_name
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }
  # tenancy
  user_data = <<EOF
#!/bin/sh
sudo yum update -y
sudo yum install -y https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
sudo yum install -y mysql-community-client
EOF
  # user_data_base64
  # volume_tags
  vpc_security_group_ids = [aws_security_group.this.id]
  depends_on             = [aws_key_pair.this, aws_iam_role.this]
}