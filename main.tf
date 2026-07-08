module "repo_estandar" {
  source = "./modules/repo-estandar"

  repo_nombre       = "repo-nuevo-terraform"
  descripcion_repo = "es una practica de modulos"
  secreto_actions = var.secreto_actions
  var_action = "varviables"
  colabradores_repo = []
}