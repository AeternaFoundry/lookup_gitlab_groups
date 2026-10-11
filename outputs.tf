output "groups_lookup_id" {
  description = "Map of id values across all groups_lookup, keyed the same as var.groups_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_groups.groups_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "groups_lookup_groups" {
  description = "Map of groups values across all groups_lookup, keyed the same as var.groups_lookup except keys with no groups are omitted"
  value       = { for k, v in data.gitlab_groups.groups_lookup : k => v.groups if v.groups != null && length(v.groups) > 0 }
}
output "groups_lookup_order_by" {
  description = "Map of order_by values across all groups_lookup, keyed the same as var.groups_lookup except keys with no order_by are omitted"
  value       = { for k, v in data.gitlab_groups.groups_lookup : k => v.order_by if v.order_by != null && length(v.order_by) > 0 }
}
output "groups_lookup_search" {
  description = "Map of search values across all groups_lookup, keyed the same as var.groups_lookup except keys with no search are omitted"
  value       = { for k, v in data.gitlab_groups.groups_lookup : k => v.search if v.search != null && length(v.search) > 0 }
}
output "groups_lookup_sort" {
  description = "Map of sort values across all groups_lookup, keyed the same as var.groups_lookup except keys with no sort are omitted"
  value       = { for k, v in data.gitlab_groups.groups_lookup : k => v.sort if v.sort != null && length(v.sort) > 0 }
}
output "groups_lookup_top_level_only" {
  description = "Map of top_level_only values across all groups_lookup, keyed the same as var.groups_lookup except keys with no top_level_only are omitted"
  value       = { for k, v in data.gitlab_groups.groups_lookup : k => v.top_level_only if v.top_level_only != null }
}

