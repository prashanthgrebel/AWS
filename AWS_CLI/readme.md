# VPC /Subnets CLI Commands

* List VPC's
  ```
  aws ec2 describe-vpcs --query "Vpcs[*].{ID:VpcId, CIDR:CidrBlock, State:State, Name:Tags[?Key=='Name'].Value | [0]}" --output table --region=us-east-1
  ```
* List subnets in a VPC
    ```
  aws ec2 describe-subnets --filters "Name=vpc-id,Values=vpc-05831f9e51be19737" --query "Subnets[*].{ID:SubnetId, AZ:AvailabilityZone, CIDR:CidrBlock}" --output table --region=us-east-1
   ```
# Security group commands
* List all security groups
  ```
  aws ec2 describe-security-groups --query "SecurityGroups[*].{ID:GroupId,Name:GroupName,Tags:Tags[?Key=='Name'].Value | [0]}" --output table --region=us-east-1
  ```
