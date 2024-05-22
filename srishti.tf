provider "aws" {
  region = "us-east-1"  # Change this to your desired AWS region
  access_key = AKIAXYKJR7RK6BIHN3CE
  secret_key = AOVLlQLtx0geO+xfng3ECN0+OP5db8uG1XCbfkdt
}

resource "aws_iam_user" "srishti" {
  name = "srishti"  # Replace with the desired username for the new IAM user
}

resource "aws_iam_user_policy_attachment" "new_user_policy_attachment" {
  user       = aws_iam_user.srishti.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"  # Example: Attaching AdministratorAccess policy, adjust as needed
}
