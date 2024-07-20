# VPC CLI Commands

* List VPC's
  ```
  aws ec2 describe-vpcs --query "Vpcs[*].{ID:VpcId, CIDR:CidrBlock, State:State, Name:Tags[?Key=='Name'].Value | [0]}" --output table --region=us-east-1
  ```
