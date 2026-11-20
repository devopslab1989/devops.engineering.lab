resource "google_artifact_registry_repository" "app_repo" {
  location      = var.region
  repository_id = var.repo_id
  description   = "Container images for devops.engineering.lab"
  format        = "DOCKER"
  project       = var.project_id
}

output "artifact_registry_url" {
  value       = "${var.region}-docker.pkg.dev/${var.project_id}/${google_artifact_registry_repository.app_repo.repository_id}"
  description = "Base Docker registry URL"
}
