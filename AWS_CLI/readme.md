# VPC /Subnets CLI Commands

* List VPC's
  ```
  aws ec2 describe-vpcs --query "Vpcs[*].{ID:VpcId, CIDR:CidrBlock, State:State, Name:Tags[?Key=='Name'].Value | [0]}" --output table --region=us-east-1
  ```
* List subnets in a VPC
  ```
  aws ec2 describe-subnets --filters "Name=vpc-id,Values=vpc-074a0c7b2005e4cc9" --query "Subnets[*].{ID:SubnetId, AZ:AvailabilityZone, CIDR:CidrBlock}" --output table --region=us-east-1
  ```
