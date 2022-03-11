**Update terraform with AKS ACR role assignment**

Add the role assignment to AKS to pull the image. This can be done by adding the following command in your main.tf and providing the ACRpull permission.  

```

resource "azurerm_role_assignment" "aks-acr-rg" {
  scope                = module.acr.resource_group_id
  role_definition_name = "Acrpull"
  principal_id         = module.aks.kubelet_object_id

  depends_on = [
    module.aks,
    module.acr
  ]
}
```