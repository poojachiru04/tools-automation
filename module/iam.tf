resource "aws_iam_role" "main" {
  name = "${var.name}-role"

  assume_role_policy =<<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
       "Principal": {
         "Service": "ec2.amazonaws.com"
    },
    "Action": "sts:AssumeRole"
    }
  ]
}
EOF

  inline_policy {

    policy = <<EOT
{
   "Version": "2012-10-17",
   "Statement": [
        {
             "Sid": "Visualeditor0",
             "Effect": "Allow",
             "Action": "${var.policy_actions}",
             "Resource": "*"
        }
   ]
}
EOT
  }

  tags = {
    tag-key = "${var.name}-role"
  }
}

resource "aws_iam_instance_profile""main" {
  name = "${var.name}-role"
  role = aws_iam_role.main.name
}