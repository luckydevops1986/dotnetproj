output "webapp_name" {
  value = azurerm_windows_web_app.nfwebapp.name
}

output "webapp_url" {
  value = azurerm_windows_web_app.nfwebapp.default_hostname
}