variable "groups_lookup" {
  description = <<EOT
Map of groups_lookup, attributes below
Optional:
    - order_by
    - search
    - sort
    - top_level_only
EOT

  type = map(object({
    order_by       = optional(string)
    search         = optional(string)
    sort           = optional(string)
    top_level_only = optional(bool)
  }))
}

