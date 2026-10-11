data "gitlab_groups" "groups_lookup" {
  for_each = var.groups_lookup

  order_by       = each.value.order_by
  search         = each.value.search
  sort           = each.value.sort
  top_level_only = each.value.top_level_only
}

