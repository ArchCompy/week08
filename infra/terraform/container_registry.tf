resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  sku           = "Basic"
  admin_enabled = false

  tags = merge(
    var.tags,
    {
      Environment = var.environment
    }
  )
}

data "azurerm_client_config" "current" {}

resource "azurerm_role_assignment" "pipeline_acr_push" {
  principal_id         = data.azurerm_client_config.current.object_id
  principal_type       = "ServicePrincipal"
  role_definition_name = "AcrPush"
  scope                = azurerm_container_registry.acr.id
}
