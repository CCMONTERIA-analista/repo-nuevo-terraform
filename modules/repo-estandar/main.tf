resource "github_repository" "this" {
  name = var.repo_nombre
  description = var.descripcion_repo
  auto_init = true
  visibility = var.visibility
  has_issues = true
}

resource "github_repository_ruleset" "this" {
  name = "proteccion ${var.repo_nombre}"
  repository = github_repository.this.name
  target = "branch"
  enforcement = "active"
  

  conditions {
    ref_name {
      include = ["~DEFAULT_BRANCH"]
      exclude = []
    }
  }

  rules {
    pull_request {
      required_approving_review_count = 1
      
    }
  }

  bypass_actors {
   actor_id = 5
   actor_type = "RepositoryRole" 
   bypass_mode = "always"
  }  

}


resource "github_actions_secret" "this" {
  repository = github_repository.this.name
  secret_name = "secret_${replace(var.secreto_actions, "-", "_")}"
  value = var.secreto_actions
}

resource "github_repository_collaborator" "this" {
  for_each = var.colabradores_repo
  repository = github_repository.this.name
  username = each.value
  permission = "pull"
}

resource "github_actions_variable" "name" {
  repository = github_repository.this.name
  variable_name = "var_${replace(var.var_action, "-", "_")}"
  value = var.var_action
}