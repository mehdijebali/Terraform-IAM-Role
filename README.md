# Provision IAM Role & Policy with Terraform
In this demo, we will create an EC2 instance and S3 bucket. After that we will attach an IAM role to the instance with a predifined policy that allows the access to the bucket. We will use a custom AMI image created by **Packer** and configured by **Ansible**.
![](./Lab_Results/IAM_Role.png)
## About IAM 
An IAM role is an IAM identity that you can create in your account that has specific permissions. An IAM role is similar to an IAM user, in that it is an AWS identity with permission policies that determine what the identity can and cannot do in AWS. However, instead of being uniquely associated with one person, a role is intended to be assumable by anyone who needs it. Also, a role does not have standard long-term credentials such as a password or access keys associated with it. Instead, when you assume a role, it provides you with temporary security credentials for your role session.

You can use roles to delegate access to users, applications, or services that don't normally have access to your AWS resources. For example, you might want to grant users in your AWS account access to resources they don't usually have, or grant users in one AWS account access to resources in another account. Or you might want to allow a mobile app to use AWS resources, but not want to embed AWS keys within the app (where they can be difficult to rotate and where users can potentially extract them). Sometimes you want to give AWS access to users who already have identities defined outside of AWS, such as in your corporate directory. Or, you might want to grant access to your account to third parties so that they can perform an audit on your resources.
## Instructions
1. Clone the project 
```
git clone https://github.com/mehdijebali/Terraform-IAM-Role.git
```
2. In the project root directory, create an SSH key and name it **levelup_key**
```
ssh-keygen
``` 
3. Export your AWS Credentials
```
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=us-west-2
```
4. Validate Packer configuration file syntax
```
packer validate install_custom_ami.json
```
5. Once the validation is succeeded, you can build the custom image
```
packer build install_custom_ami.json
```
6. In the project root directory, initiate Terraform in order to install the declared provider in `main.tf` file
```
terraform init
```

7. If you want to see your provisionning details, run the following command
```
terraform plan
```
8. Apply modifications
```
terraform apply
```
9. After the creation is completed, SSH to the EC2 instance
```
ssh -i /path/to/private/key ec2-user@<public_ip>
```
10. Copy the created file to S3 bucket
```
aws s3 cp myfile.txt s3://demo-terraform-bucket-mj/myfile.txt
```
Note that the bucket name should be unique, so you may change it.
## Expected Results
Once the provisionning is done, we can verify the access to S3 from the AWS console.
#### EC2 Instance
![](./Lab_Results/instance.png)
#### S3 Bucket
![](./Lab_Results/s3.png)
#### IAM Role
![](./Lab_Results/s3_role.png)
#### IAM Policy
![](./Lab_Results/s3_policy.png)
#### File Upload
![](./Lab_Results/s3_upload.png)
