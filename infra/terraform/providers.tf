terraform {
  required_version = ">= 1.5.0"

  backend "gcs" {
    bucket = "devops-engineering-lab-515310-tfstate"
    prefix = "infra/terraform"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = "devops-engineering-lab-515310"
  region  = "us-central1"
}