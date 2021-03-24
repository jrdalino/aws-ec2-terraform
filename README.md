# Terraform module to provision an AWS EC2 Instance

## Prerequisites
- Provision an S3 bucket to store Terraform State and DynamoDB for state-lock using https://github.com/jrdalino/aws-tfstate-backend-terraform
- AssumeRole: "OrganizationAccountAccessRole" should exist in the destination AWS account

## Terraform Module Usage
- Copy the contents of /examples folder (main.tf, ouputs.tf, state_config.tf, terraform.tfvars and variabels.tf)
- Include this repository as a module in your existing terraform code:
```
module "ec2" {
  source = "git::https://github.com/jrdalino/aws-ec2-terraform.git?ref=main"
}
```
- Replace variables in state_config.tf
- Replace variables in terraform.tfvars
- Initialize, Review Plan and Apply
```
$ terraform init
$ terraform fmt
$ terraform validate
$ terraform plan
$ terraform apply
```

## Inputs
| Name | Description |
|------|-------------|
| | |

## Outputs
| Name | Description |
|------|-------------|
| | |

## Generate a Key Pair
- Generate a Key Pair
```
ssh-keygen -t rsa
```
```
Generating public/private rsa key pair.
Enter file in which to save the key (~/.ssh/id_rsa): 
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in ~/.ssh/id_rsa.
Your public key has been saved in ~/.ssh/id_rsa/id_rsa.pub.
The key fingerprint is:
4a:dd:0a:c6:35:4e:3f:ed:27:38:8c:74:44:4d:93:67 demo@a
The key's randomart image is:
+--[ RSA 2048]----+
|          .oo.   |
|         .  o.E  |
|        + .  o   |
|     . = = .     |
|      = S = .    |
|     o + = +     |
|      . o + o .  |
|           . o   |
|                 |
+-----------------+
```
- Copy the Key Pair
```
cat ~/.ssh/id_rsa.pub
```

## Install MySQL Client & Connect to RDS MySQL
```
sudo yum install -y https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
sudo yum install -y mysql-community-client
mysql -h bbsdm-shared-rds-name.cxutkfl8nfhe.ap-southeast-1.rds.amazonaws.com -P 3306 -u admin -p
```

## References