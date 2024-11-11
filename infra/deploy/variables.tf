variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "da"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "deep@example.com"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "devops-app-api"
}
