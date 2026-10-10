variable "mailmanager_traffic_policies" {
  description = <<EOT
Map of mailmanager_traffic_policies, attributes below
Required:
    - default_action
    - name
Optional:
    - max_message_size_bytes
    - region
    - tags
    - policy_statement (block):
        - action (required)
        - condition (optional, block):
            - boolean_expression (optional, block):
                - evaluate (optional, block):
                    - analysis (optional, block):
                        - analyzer (required)
                        - result_field (required)
                    - is_in_address_list (optional, block):
                        - address_lists (required)
                        - attribute (required)
                - operator (required)
            - ip_expression (optional, block):
                - evaluate (optional, block):
                    - attribute (required)
                - operator (required)
                - values (required)
            - ipv6_expression (optional, block):
                - evaluate (optional, block):
                    - attribute (required)
                - operator (required)
                - values (required)
            - string_expression (optional, block):
                - evaluate (optional, block):
                    - analysis (optional, block):
                        - analyzer (required)
                        - result_field (required)
                    - attribute (optional)
                - operator (required)
                - values (required)
            - tls_expression (optional, block):
                - evaluate (optional, block):
                    - attribute (required)
                - operator (required)
                - value (required)
EOT

  type = map(object({
    default_action         = string
    name                   = string
    max_message_size_bytes = optional(number)
    region                 = optional(string)
    tags                   = optional(map(string))
    policy_statement = optional(list(object({
      action = string
      condition = optional(list(object({
        boolean_expression = optional(list(object({
          evaluate = optional(list(object({
            analysis = optional(list(object({
              analyzer     = string
              result_field = string
            })))
            is_in_address_list = optional(list(object({
              address_lists = list(string)
              attribute     = string
            })))
          })))
          operator = string
        })))
        ip_expression = optional(list(object({
          evaluate = optional(list(object({
            attribute = string
          })))
          operator = string
          values   = list(string)
        })))
        ipv6_expression = optional(list(object({
          evaluate = optional(list(object({
            attribute = string
          })))
          operator = string
          values   = list(string)
        })))
        string_expression = optional(list(object({
          evaluate = optional(list(object({
            analysis = optional(list(object({
              analyzer     = string
              result_field = string
            })))
            attribute = optional(string)
          })))
          operator = string
          values   = list(string)
        })))
        tls_expression = optional(list(object({
          evaluate = optional(list(object({
            attribute = string
          })))
          operator = string
          value    = string
        })))
      })))
    })))
  }))
}

