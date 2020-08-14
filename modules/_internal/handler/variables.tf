variable "handler" {
  type        = string
  description = "Entry point for the lambda function. Must be one of: review_handler, branch_handler, tag_handler, schedule_handler"
}

variable "stage" {
  type        = string
  description = "Name of the stage"
}

variable "stage_description" {
  type        = string
  description = "Description of the stage, used in resources created by this module"
}

variable "repo_name" {
  type        = string
  description = "Name of the CodeCommit repository"
}

variable "project_arn" {
  type        = string
  description = "ARN of the CodeBuild project"
}

variable "lambda_policy_override" {
  type        = string
  description = "IAM policy document in JSON that extends the Lambda service role"
  default     = ""
}

variable "permissions_boundary" {
  type        = string
  description = "ARN of permissions boundary to apply to role"
  default     = null 
}
