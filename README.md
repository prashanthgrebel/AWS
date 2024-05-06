# AWS


# AWS Identity and Access Management (AWS IAM): 

# IAM: Users & Groups
* IAM = Identity and Access Management, Global service
* Root account created by default, shouldn’t be used or shared
* Users are people within your organization, and can be grouped
* Groups only contain users, not other groups
* Users don’t have to belong to a group, and user can belong to multiple groups
![image](https://github.com/prashanthgrebel/AWS/assets/92351464/f5f5569b-cade-44cd-9f35-7c8eccc2dc9c)


# IAM: Permissions
* Users or Groups can be assigned JSON documents called policies
* These policies define the permissions of the users
* In AWS you apply the least privilege principle: don’t give more permissions than a user needs
```
{
"Version": "2012-10-17",
"Statement": [
	{
		"Effect": "Allow",
		"Action": "ec2:Describe*",
		"Resource": "*"
	},
	{
		"Effect": "Allow",
		"Action": "elasticloadbalancing:Describe*",
		"Resource": "*"
	},
	{
		"Effect": "Allow",
		"Action": [
		"cloudwatch:ListMetrics",
		"cloudwatch:GetMetricStatistics",
		"cloudwatch:Describe*"
		],
		"Resource": "*"
	}
	]
}
```
# IAM Policies inheritance
![image](https://github.com/prashanthgrebel/AWS/assets/92351464/f7bc096c-068d-4b33-9f5d-98158a2efd1a)

# IAM Policies Structure
![image](https://github.com/prashanthgrebel/AWS/assets/92351464/5a6e4c58-9564-4151-a0f1-43679d1d3339)

* #  ==>  Consists of:-
* Version: policy language version, always include “2012-10-17”    
* Id: an identifier for the policy (optional)
* Statement: one or more individual statements (required)
* # ==>  Statements consists of:- 
* Sid: an identifier for the statement (optional)
* Effect: whether the statement allows or denies access (Allow, Deny)
* Principal: account/user/role to which this policy applied to
* Action: list of actions this policy allows or denies
* Resource: list of resources to which the actions applied to
* Condition: conditions for when this policy is in effect (optional)

# IAM Roles for Services
* Some AWS service will need to perform actions on your behalf
* To do so, we will assign permissions to AWS services with IAM Roles
  * # ==> Common roles:
* EC2 Instance Roles
* Lambda Function Roles
* Roles for CloudFormation

  
#  IAM Guidelines & Best Practices
* Don’t use the root account except for AWS account setup
* One physical user = One AWS user
* Assign users to groups and assign permissions to groups
* Create a strong password policy
* Use and enforce the use of Multi Factor Authentication (MFA)
* Create and use Roles for giving permissions to AWS services
* Use Access Keys for Programmatic Access (CLI / SDK)
* Audit permissions of your account using IAM Credentials Report & IAM Access Advisor
* Never share IAM users & Access Keys
# ####################################################################################################################################################################################################





# Amazon EC2 : -
* EC2 is one of the most popular of AWS’ offering
* EC2 = Elastic Compute Cloud = Infrastructure as a Service

* # It mainly consists in the capability of :
* Renting virtual machines (EC2)
* Storing data on virtual drives (EBS)
* Distributing load across machines (ELB)
* Scaling the services using an auto-scaling group (ASG)
  
# EC2 sizing & configuration options
* Operating System (OS): Linux, Windows or Mac OS
* How much compute power & cores (CPU)
* How much random-access memory (RAM)
* How much storage space:
	* Network-attached (EBS & EFS)
	* hardware (EC2 Instance Store)
* Network card: speed of the card, Public IP address
* Firewall rules: security group
* Bootstrap script (configure at first launch): EC2 User Data

  # Ec2 instance types:
   https://aws.amazon.com/ec2/instance-types/
  * # EC2 Instance Types – General Purpose:
     * Great for a diversity of workloads such as web servers or code repositories
     * Balance between:
		* Compute
		* Memory
		* Networking


  # Security Groups: -
* Security Groups are the fundamental of network security in AWS
* They control how traffic is allowed into or out of our EC2 Instances.
* Security groups only contain rules
* Security groups rules can reference by IP or by security group

* Security groups are acting as a “firewall” on EC2 instances
* They regulate:
	* Access to Ports
	* Authorised IP ranges – IPv4 and IPv6
	* Control of inbound network (from other to the instance)
	* Control of outbound network (from the instance to other)
  
Good to know
* Can be attached to multiple instances
* Locked down to a region / VPC combination
* Does live “outside” the EC2 – if traffic is blocked the EC2 instance won’t see it
* It’s good to maintain one separate security group for SSH access
* If your application is not accessible (time out), then it’s a security group issue
* If your application gives a “connection refused“ error, then it’s an application error or it’s not launched
* All inbound traffic is blocked by default
* All outbound traffic is authorised by default
* 


# Aws - On-prem DC networking Architecture: - 

![image](https://github.com/prashanthgrebel/AWS/assets/92351464/44c5d6a8-b826-4acd-8c41-c40c70a6d4d7)

