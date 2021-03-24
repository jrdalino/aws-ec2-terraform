# General
aws_region  = "ap-southeast-1"
aws_account = "623552185285" # AWS account where resource will be created
aws_role    = "OrganizationAccountAccessRole"

# Tagging
namespace       = "bbsdm"
bounded_context = "shared"
environment     = "production"

# Elastic IP
aws_eip_name = "bbsdm-shared-bastion-instance-eip"

# Key Pair
aws_key_pair_name       = "bbsdm-shared-bastion-instance-kp"
aws_key_pair_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTFV1Gce5dNs+LuX9NfVWHpaTSsGwibQ/Ba2wPjgzO9VqFJ5yd0vPZnS42X7VxLVeoDlTlm6bMOs3LUdAx3eRDn+yaDnEQ0iRkT0oPMojYeMuTOjdcdu7RBChuPnrurK+RMXaT+tWZ6H0FbP6/Af4VhKi9KOOUUinYAOUSiPE1/MrRB3gx8gjn3vWZ5vxcRpcBIQkSp07+5HtOvhsxbF+QXtsdLQ9SMktFwXvV3+NpJjxYt++WFKs9TN54I/0iyoFPjbAtZ8Zk7eAkA5qa9nHtip13KCMVe08SrZVcBx+7Gr0l8yFjzzcODKiPAHv//H9J16O7COTPrl/uIwHOlV1H6pxyhyXpsHqLAr0XHkomTkXhMXQK9bvGU09eUHq3/qq4KFUxcX1XCJfLdko8rY2UbvFpPTJmtRqor/agwQWGmusVJ3923R0wfYPoYw+XgIrLubZNFbDVgzCnBZMVx7+CU8nlLmOpviANYo1kT0JloDDHu3E1N2M+gEa47sfjVac= jose.dalino@travelominsmbp2.lan"

# Security Group
aws_security_group_name   = "bbsdm-shared-bastion-instance-sg"
aws_security_group_vpc_id = "vpc-02ded520cd1f614e9"

# IAM Role & Policy
aws_iam_role_name        = "bbsdm-shared-bastion-instance-role"
aws_iam_role_policy_name = "bbsdm-shared-bastion-instance-role-policy"

# EC2 Instance
aws_instance_ami           = "ami-0ba0ce0c11eb723a1"
aws_instance_instance_type = "t3a.nano"
aws_instance_subnet_id     = "subnet-0bcd561566db47c90"
aws_instance_name          = "bbsdm-shared-bastion-instance"