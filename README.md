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
