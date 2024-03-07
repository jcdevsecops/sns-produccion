resource "aws_sns_topic" "example" {
  name = var.topic_name
}

resource "aws_sns_topic_subscription" "sms_subscription" {
  topic_arn = aws_sns_topic.example.arn
  protocol  = "sms"
  endpoint  = var.phone  
}

resource "aws_sns_topic_policy" "example_policy" {
  arn    = aws_sns_topic.example.arn
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Id": "example_policy",
  "Statement": [
    {
      "Sid": "example_statement",
      "Effect": "Allow",
      "Principal": "*",
      "Action": [
        "SNS:Publish",
        "SNS:Subscribe",
        "SNS:Receive"
      ],
      "Resource": "arn:aws:sns:us-west-2:123456789012:my-first-sns-topic"
    }
  ]
}
EOF
}