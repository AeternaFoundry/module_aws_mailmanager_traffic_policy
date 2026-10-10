output "mailmanager_traffic_policies_id" {
  description = "Map of id values across all mailmanager_traffic_policies, keyed the same as var.mailmanager_traffic_policies"
  value       = { for k, v in aws_mailmanager_traffic_policy.mailmanager_traffic_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mailmanager_traffic_policies_arn" {
  description = "Map of arn values across all mailmanager_traffic_policies, keyed the same as var.mailmanager_traffic_policies"
  value       = { for k, v in aws_mailmanager_traffic_policy.mailmanager_traffic_policies : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "mailmanager_traffic_policies_created_timestamp" {
  description = "Map of created_timestamp values across all mailmanager_traffic_policies, keyed the same as var.mailmanager_traffic_policies"
  value       = { for k, v in aws_mailmanager_traffic_policy.mailmanager_traffic_policies : k => v.created_timestamp if v.created_timestamp != null && length(v.created_timestamp) > 0 }
}
output "mailmanager_traffic_policies_default_action" {
  description = "Map of default_action values across all mailmanager_traffic_policies, keyed the same as var.mailmanager_traffic_policies"
  value       = { for k, v in aws_mailmanager_traffic_policy.mailmanager_traffic_policies : k => v.default_action if v.default_action != null && length(v.default_action) > 0 }
}
output "mailmanager_traffic_policies_last_updated_timestamp" {
  description = "Map of last_updated_timestamp values across all mailmanager_traffic_policies, keyed the same as var.mailmanager_traffic_policies"
  value       = { for k, v in aws_mailmanager_traffic_policy.mailmanager_traffic_policies : k => v.last_updated_timestamp if v.last_updated_timestamp != null && length(v.last_updated_timestamp) > 0 }
}
output "mailmanager_traffic_policies_max_message_size_bytes" {
  description = "Map of max_message_size_bytes values across all mailmanager_traffic_policies, keyed the same as var.mailmanager_traffic_policies"
  value       = { for k, v in aws_mailmanager_traffic_policy.mailmanager_traffic_policies : k => v.max_message_size_bytes if v.max_message_size_bytes != null }
}
output "mailmanager_traffic_policies_name" {
  description = "Map of name values across all mailmanager_traffic_policies, keyed the same as var.mailmanager_traffic_policies"
  value       = { for k, v in aws_mailmanager_traffic_policy.mailmanager_traffic_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mailmanager_traffic_policies_policy_statement" {
  description = "Map of policy_statement values across all mailmanager_traffic_policies, keyed the same as var.mailmanager_traffic_policies"
  value       = { for k, v in aws_mailmanager_traffic_policy.mailmanager_traffic_policies : k => v.policy_statement if v.policy_statement != null && length(v.policy_statement) > 0 }
}
output "mailmanager_traffic_policies_region" {
  description = "Map of region values across all mailmanager_traffic_policies, keyed the same as var.mailmanager_traffic_policies"
  value       = { for k, v in aws_mailmanager_traffic_policy.mailmanager_traffic_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "mailmanager_traffic_policies_tags" {
  description = "Map of tags values across all mailmanager_traffic_policies, keyed the same as var.mailmanager_traffic_policies"
  value       = { for k, v in aws_mailmanager_traffic_policy.mailmanager_traffic_policies : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "mailmanager_traffic_policies_tags_all" {
  description = "Map of tags_all values across all mailmanager_traffic_policies, keyed the same as var.mailmanager_traffic_policies"
  value       = { for k, v in aws_mailmanager_traffic_policy.mailmanager_traffic_policies : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

