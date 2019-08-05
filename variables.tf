variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "aws_iam_policy_name" {
  description = "IAM policy name to attach to the user"
}

variable "bucket_name" {
  description = "The bucket to access, for instance app.prod.scalair.eu-west-1"
}

##################################################
# Module terraform-aws-modules/terraform-aws-iam #
##################################################
variable "iam_user_pgp_key" {
  description = "Either a base-64 encoded PGP public key, or a keybase username in the form keybase:username. Used to encrypt password and access key."
  type        = string
}

variable "iam_user_name" {
  description = "Desired name for the IAM user"
  type        = string
}

variable "iam_user_force_destroy" {
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed."
  type        = bool
  default     = true
}