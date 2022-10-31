variable "name" {
  description = "The name of the user."
  default =  "Test User"
}

variable "email" {
  description = "The user's main email address."
  default = "test@example.com"
}

variable "role" {
  description = "Account must have the 'read_only_users' ability to set a user as a 'read_only_user' or a 'read_only_limited_user', and must have advanced permissions abilities to set a user as observer or 'restricted_access'. Can be 'admin', 'limited_user', 'observer', 'owner', 'read_only_user', 'read_only_limited_user', 'restricted_access', or 'user'."
  default     = "user"
}

variable "job_title" {
  description = "The user's title."
  default     = "Engineer"
}

variable "user_roles" {
  default = {
    "Default" = "limited_user"
  }
}

variable "description" {
  default = {
    "Default" = "Managed By Terraform"
  }
}