# Deploy To Azure Kubernetes Services (AKS) # 

This section will be deploying the an sample voting app to an AKS cluster. First, we will have to add some changes to the terraform file in order to add AKS permision to ACR, deploy application insight and key vault. 

**Update terraform with AKS ACR role assignment**

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
```
**Deploy Application Insights using terraform**

Make a copy of the YAML file called DeployAKSpipeline-staging found in the pipeline folder. Comment out the aks stage from the file. 

- Add the application insight modules. [Appinsight Module](https://github.com/nicholaschangIT/Devops-Journey/tree/main/Deploy-To-AKS/terraform/modules/appinsights)

- Update the main.tf with the changes 

``
module "appinsights" {
  source           = "./modules/appinsights"
  name             = var.app_insights_name
  location         = var.location
  environment      = var.environment
  application_type = var.application_type
}
```
- Update variable.tf for the appinsight module by adding two variable. "app_insights_name and application_type"

``
variable "app_insights_name" {
  type = string
  description = "Application Insights Name"
}

variable "application_type" {
  type = string
  description = "Application Insights Type"
}
```

- Add the following to the production.tfvars file. 

```
app_insights_name = "devopsjourney"
application_type  = "web"

```

**Deploy Azure Key Vault using Terraform**

- Deploy Key vault using this module [KeyVault Module](https://github.com/nicholaschangIT/Devops-Journey/tree/main/Deploy-To-AKS/terraform/modules/keyvault)

- Update the Main.tf with the following code 

```
module "keyvault" {
  source           = "./modules/keyvault"
  name             = var.keyvault_name
  access_policy_id = var.access_policy_id
}
```
- Update the variable.tf file by adding two variable "keyvault_name and "access_policy_id"

```
variable "keyvault_name" {
  type = string
  description = "Key Vault Name"
}

variable "access_policy_id" {
  type = string
  description = "Object ID for Key Vault Policy"
}

```
- Update the staging and production.tfvars found in the variable folder called vars. Please replace the objectID for your user in the access_police_id when you run the create-ad-group script found here https://github.com/nicholaschangIT/Devops-Journey/blob/main/Azure-Devops-Enviornment-Setup/scripts/create-ad-group.sh 

```
keyvault_name = "devopsjourney"
access_policy_id  = "7da738c2-5c92-401c-87f1-eadbcf714367" 

```

***Run Pipeline***




After Azure keyvault has been created run the below script to add a secret to it  

- az extension add --name application-insights
- az monitor app-insights component show --app devopsjourney-rg -g devopsjourney-rg
- az keyvault secret set --vault-name "devopsjourney-kvtest" --name "AIKEY" --value 39eb55bd-acae-436f-9b83-822e82a46f59











**Update Azure DevOps pipeline and Deploy sample application to AKS**