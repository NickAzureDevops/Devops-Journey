**Deploy Key Vault using terraform**

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
- Update the staging and production.tfvars found in the variable folder called vars. Please replace the objectID for your user in the access_police_id when you run the create-ad-group script found here [Create-ad-group]https://github.com/nicholaschangIT/Devops-Journey/blob/main/Azure-Devops-Enviornment-Setup/scripts/create-ad-group.sh)

```
keyvault_name = "devopsjourney"
access_policy_id  = "7da738c2-5c92-401c-87f1-eadbcf714367" 

```

Once this has been added, please add the Service Principle for your docker registry to the group called devopsjourney-aks-group in Azure Portal. 


***Run Pipeline***

The next step is to run the pipeline. I have created a separate pipeline called DeployKeyvaulStaging as it will create resources required like app insight and key vault. 

After Azure key vault has been created run the below script to add a secret to it  

- az extension add --name application-insights (This will install the application insights extension locally)

- az monitor app-insights component show --app devopsjourneytest-rg -g devopsjourneytest-rg   (This command will give you details of your app insight and your Instrumentation Key which you will need for the next step)

- az keyvault secret set --vault-name "devopsjourneytest-kvtest" --name "AIKEY" --value 3d192e8e-5f50-4a39-b022-50e65ff3f750 (Replace the value by AIKEY to the Instrumentation Key)

***Creating Variable Group***

When the above resources have been created, the next step is to create a variable group in Azure DevOps. 

- Go to the section of the pipeline in your project and go to the library then click on the variable group tab. 

![](/Deploy-To-AKS/images/library.png)

![](/Deploy-To-AKS/images/variablegroup.png)


- Add a variable group called devopsjourney and tick the option "link secrets from an Azure key vault as variables". Once it has detected your key vault name and click add under variables to add your secret to it. 

![](/Deploy-To-AKS/images/addkeyvaultsecrets.png)


