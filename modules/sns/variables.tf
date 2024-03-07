variable "region" {
    description = "The AWS region"
    type        = string
    default     = "us-east-1"
}

variable "topic_name" {
    description = "The name of the SNS topic"
    type        = string
}

variable "topic_display_name" {
    description = "The display name of the SNS topic"
    type        = string
    default     = "My SNS Topic"
}

variable "enable_encryption" {
    description = "Enable encryption for the SNS topic"
    type        = bool
    default     = false
}