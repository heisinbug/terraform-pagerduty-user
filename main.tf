  # JSON implementation
  locals {
  user_data = jsondecode(file("${path.module}/users.json"))
  all_users = local.user_data.users
  }
resource "pagerduty_user" "users" {
  for_each  = local.all_users
  name      = each.value.name
  email     = each.value.email
  role      = lookup(each.value, "role", var.user_roles.Default)
  job_title = each.value.title
  description = lookup(each.value, "description", var.description.Default)
}