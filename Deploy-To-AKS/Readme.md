# Deploy To Azure Kubernetes Services (AKS) # 

This section will be deploying the an sample voting app to an AKS cluster. First, we will have to add some changes to the terraform file in order to add AKS permision to ACR, deploy application insight and key vault. 

***Update terraform with AKS ACR role assignment***

Add the role assignment to AKS to pull the image. This can be done by adding the following command in your main.tf and provide the Acrpull permission.  

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

Make a copy of the previous lab called buildpipline.yaml and run pipeline so the change to Azure. [Deploy to ACR](https://github.com/nicholaschangIT/Devops-Journey/blob/main/Deploy-To-ACR/pipelines/buildpipeline.yaml) If you get an erorr please, ignore for now


```

***Deploy Application Insights using terraform***

- Add the application insight modules.  [Appinsight Module](https://github.com/nicholaschangIT/Devops-Journey/tree/main/Deploy-To-AKS/terraform/modules/appinsights)

- Update the main.tf with the changes - [main.tf](https://github.com/nicholaschangIT/Devops-Journey/tree/main/Deploy-To-AKS/terraform/modules/appinsights)

- Update variable.tf - [AppInsight Module](https://github.com/nicholaschangIT/Devops-Journey/tree/main/Deploy-To-AKS/terraform/modules/appinsights)

- add the following to the production.tfvars file. 

```
app_insights_name = "devopsjourney"
application_type  = "web"

```

***Deploy Azure Key Vault using Terraform***

az extension add --name application-insights

az monitor app-insights component show --app devopsjourney-rg -g devopsjourney-rg

az keyvault secret set --vault-name "devopsjourney-kvtest" --name "AIKEY" --value 23d9ef56-b05d-43b4-81a4-7c5910096caf

***Update Azure DevOps pipeline and Deploy sample application to AKS***