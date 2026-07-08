output "repo_url" {
  value = github_repository.this.html_url
}

output "repo_name" {
  value = var.repo_nombre
}