<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.100.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_instance"></a> [instance](#module\_instance) | ./modules/instance | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.s3-levelupbucket-role-instanceprofile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.s3-levelupbucket-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.s3-levelupmybucket-role-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_s3_bucket.levelup-s3bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_versioning.levelup-s3bucketversioning](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_ami.packer_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_vpc.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AVAILABILITY_ZONE"></a> [AVAILABILITY\_ZONE](#input\_AVAILABILITY\_ZONE) | Availability Zone where instances is deployed | `string` | `"us-east-1a"` | no |
| <a name="input_AWS_REGION"></a> [AWS\_REGION](#input\_AWS\_REGION) | The region where resources are deployed | `string` | `"us-east-1"` | no |
| <a name="input_INSTANCE_NAME"></a> [INSTANCE\_NAME](#input\_INSTANCE\_NAME) | EC2 Instance Name | `string` | `"tf_instance"` | no |
| <a name="input_INSTANCE_TYPE"></a> [INSTANCE\_TYPE](#input\_INSTANCE\_TYPE) | AWS Instance type | `string` | `"t2.micro"` | no |
| <a name="input_ROLE_NAME"></a> [ROLE\_NAME](#input\_ROLE\_NAME) | S3 Role Name | `string` | `"s3-levelupbucket-role"` | no |
| <a name="input_ROLE_POLICY_NAME"></a> [ROLE\_POLICY\_NAME](#input\_ROLE\_POLICY\_NAME) | S3 Policy Name | `string` | `"s3-levelupmybucket-role-policy"` | no |
| <a name="input_SG_DESCRIPTION"></a> [SG\_DESCRIPTION](#input\_SG\_DESCRIPTION) | Security Group Description | `string` | `"Allow SSH Connection"` | no |
| <a name="input_SG_NAME"></a> [SG\_NAME](#input\_SG\_NAME) | Security Group Name | `string` | `"Allow_SSH"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.84.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_instance"></a> [instance](#module\_instance) | ./modules/instance | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.s3-levelupbucket-role-instanceprofile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.s3-levelupbucket-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.s3-levelupmybucket-role-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_s3_bucket.levelup-s3bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_ami.packer_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_vpc.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AVAILABILITY_ZONE"></a> [AVAILABILITY\_ZONE](#input\_AVAILABILITY\_ZONE) | Availability Zone where instances is deployed | `string` | `"us-east-1a"` | no |
| <a name="input_AWS_REGION"></a> [AWS\_REGION](#input\_AWS\_REGION) | The region where resources are deployed | `string` | `"us-east-1"` | no |
| <a name="input_INSTANCE_NAME"></a> [INSTANCE\_NAME](#input\_INSTANCE\_NAME) | EC2 Instance Name | `string` | `"tf_instance"` | no |
| <a name="input_INSTANCE_TYPE"></a> [INSTANCE\_TYPE](#input\_INSTANCE\_TYPE) | AWS Instance type | `string` | `"t2.micro"` | no |
| <a name="input_KEY_NAME"></a> [KEY\_NAME](#input\_KEY\_NAME) | SSH key name | `string` | `"levelup_key"` | no |
| <a name="input_PATH_TO_PUBLIC_KEY"></a> [PATH\_TO\_PUBLIC\_KEY](#input\_PATH\_TO\_PUBLIC\_KEY) | Path to SSH public key | `string` | `"levelup_key.pub"` | no |
| <a name="input_ROLE_NAME"></a> [ROLE\_NAME](#input\_ROLE\_NAME) | S3 Role Name | `string` | `"s3-levelupbucket-role"` | no |
| <a name="input_ROLE_POLICY_NAME"></a> [ROLE\_POLICY\_NAME](#input\_ROLE\_POLICY\_NAME) | S3 Policy Name | `string` | `"s3-levelupmybucket-role-policy"` | no |
| <a name="input_SG_DESCRIPTION"></a> [SG\_DESCRIPTION](#input\_SG\_DESCRIPTION) | Security Group Description | `string` | `"Allow SSH Connection"` | no |
| <a name="input_SG_NAME"></a> [SG\_NAME](#input\_SG\_NAME) | Security Group Name | `string` | `"Allow_SSH"` | no |

## Outputs

No outputs.
