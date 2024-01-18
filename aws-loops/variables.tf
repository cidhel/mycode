variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)                           // describe the variable type: string, number, bool, list, map
  default     = ["romeo-CH", "juliet-CH", "tybalt-CH", "friar-CH"] // if not overridden, create these 4 users
}

