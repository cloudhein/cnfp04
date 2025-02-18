# create iam user
resource "aws_iam_user" "iam-user" {
  name = "terraform-user"
  path = "/"
}

# create iam user policy
resource "aws_iam_user_policy_attachment" "iam-user-policy" {
  user       = aws_iam_user.iam-user.name
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
}

# create iam user access key
resource "aws_iam_access_key" "iam-user-access-key" {
  user = aws_iam_user.iam-user.name
}
