##################################################
# Module terraform-aws-modules/terraform-aws-iam #
##################################################
output "iam_access_key_id" {
  value = "${module.iam_user.this_iam_access_key_id}"
}

output "iam_access_key_encrypted_secret" {
  value = "${module.iam_user.this_iam_access_key_encrypted_secret}"
}

output "keybase_secret_key_decrypt_command" {
  value = "${module.iam_user.keybase_secret_key_decrypt_command}"
}
