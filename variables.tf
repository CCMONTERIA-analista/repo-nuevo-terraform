variable "github_token" {
  type        = string
  sensitive   = true
  description = "GitHub personal access token"
}


variable "colabradores_repo" {
  type        = list(string)
  default     = []
  description = "Lista de colaboradores con permiso pull"
}

variable "secreto_actions" {
  type        = string
  sensitive   = true
  description = "Valor del secreto de GitHub Actions"
}



