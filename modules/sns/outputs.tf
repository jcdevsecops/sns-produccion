output "sns_topic_arn" {
  value = aws_sns_topic.example.arn
  description = "The ARN of the created SNS topic"
}