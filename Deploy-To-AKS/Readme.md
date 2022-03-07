# Deploy To Azure Kubernetes Services (AKS) # 

This section will be deploying the an sample voting app to an AKS cluster. First, we will have to add some changes to the terraform file in order to add AKS permision to ACR, deploy application insight and key vault. 

***Update terraform with AKS ACR role assignment***

Add the role assignment to AKS to pull the image. This can be done by adding the following command in your main.tf and provide the Acrpull permission.  

resource "azurerm_role_assignment" "aks-acr-rg" {
  scope                = module.acr.resource_group_id
  role_definition_name = "Acrpull"
  principal_id         = module.aks.kubelet_object_id

  depends_on = [
    module.aks,
    module.acr
  ]
}

***Deploy Application Insights using terraform***

Add the application insight modules.  [AppInsight Module](https://github.com/nicholaschangIT/Devops-Journey/blob/main/AzureDevOpsPipeline/pipelines/staging-pipeline.yml)

- 



***Deploy Azure Key Vault using Terraform***







***Update Azure DevOps pipeline and Deploy sample application to AKS***