variable "tf_state_bucket" {
  description = "Name of S3 bucket in AWS for storing TF state"
  default     = "devops-app-tf-state"
}

variable "tf_state_lock_table" {
  description = "Name of the DynamoDB table for TF state locking"
  default     = "devops-app-tf-state"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "deep@example.com"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "devops-app-api"
}
