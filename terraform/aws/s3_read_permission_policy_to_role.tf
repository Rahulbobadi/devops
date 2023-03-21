resource "aws_iam_role_policy" "my-s3-read-policy" {
  name   = "inline-policy-name-that-will-show-on-aws"
  role   = "some-existing-iam-role-name"
  policy = data.aws_iam_policy_document.s3_read_permissions.json
}


data "aws_iam_policy_document" "s3_read_permissions" {
  statement {
    effect = "Allow"

    actions = [
      "s3:GetObject",
      "s3:GetObjectAcl",
      "s3:ListBucket",
    ]

    resources = ["arn:aws:s3:::my-bucket-1",
                  "arn:aws:s3:::my-bucket-1/*",
                  "arn:aws:s3:::my-bucket-2",
                  "arn:aws:s3:::mybucket-2/*",
    ]
  }
}
