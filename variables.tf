variable "database_tools_runtime_database_tools_database_api_gateway_config_pool_auto_api_specs_lookup" {
  description = <<EOT
Map of database_tools_runtime_database_tools_database_api_gateway_config_pool_auto_api_specs_lookup, attributes below
Required:
    - database_tools_database_api_gateway_config_id
    - pool_key
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    database_tools_database_api_gateway_config_id = string
    pool_key                                      = string
    display_name                                  = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

