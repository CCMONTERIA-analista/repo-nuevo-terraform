variable "repo_nombre" {
  type = string
  description = "nombre del repo"
  
}

variable "descripcion_repo" {
  type = string
  description = "Readme del repo"
  
}

variable "visibility" {
  type = string
  default = "public"
  description = "visibilidad del repo"
}

variable "colabradores_repo" {
  type = set(string)
  default = []
  
}

variable "secreto_actions" {
  type = string
  sensitive = true
  description = "secreto action"
}

variable "var_action" {
  type = string
  description = "variable action"
}

