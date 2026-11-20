variable "project_id" {
  type        = string
  description = "GCP project ID"
  default     = "devops-engineering-lab-515310"
}

variable "region" {
  type        = string
  description = "GCP region"
  default     = "us-central1"
}

variable "repo_id" {
  type        = string
  description = "Artifact Registry Docker repository ID"
  default     = "devops-lab-repo"
}