provider "aws" {
  region = "us-east-1"  # Change this to your desired AWS region
}

resource "aws_iam_user" "srishti" {
  name = "srishti"  # Replace with the desired username for the new IAM user
}

resource "aws_iam_access_key" "new_user_access_key" {
  user = aws_iam_user.new_user.name

  # Uncomment the following line if you want to manage the access key lifecycle with Terraform
  # lifecycle { create_before_destroy = true }
}

resource "aws_iam_user_policy_attachment" "new_user_policy_attachment" {
  user       = aws_iam_user.new_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"  # Example: Attaching AdministratorAccess policy, adjust as needed
}