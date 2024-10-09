# Output for ACR login server
output "acr_url" {
  value = azurerm_container_registry.acr.login_server
}

# Output for ACR login username
output "acr_uname" {
  value = azurerm_container_registry.acr.admin_username
}

# Output for ACR login password
output "acr_pass" {
  value = azurerm_container_registry.acr.admin_password
  sensitive = true
}

# Output for Resource Group Name
output "resource_group_name" {
  value = azurerm_resource_group.res_grp.name
}

# Output for AKS Name
output "aks_name" {
  value = azurerm_kubernetes_cluster.aks.name
}