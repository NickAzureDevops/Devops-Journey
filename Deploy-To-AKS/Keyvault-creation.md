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
- Update the staging and production.tfvars found in the variable folder called vars. Please replace the objectID for your user in the access_police_id when you run the create-ad-group script found here [Create-ad-group]https://github.com/nicholaschangIT/Devops-Journey/blob/main/Azure-Devops-Enviornment-Setup/scripts/create-ad-group.sh 

```
keyvault_name = "devopsjourney"
access_policy_id  = "7da738c2-5c92-401c-87f1-eadbcf714367" 

```

***Run Pipeline***


   

After Azure key vault has been created run the below script to add a secret to it  

- az extension add --name application-insights
- az monitor app-insights component show --app devopsjourney-rg -g devopsjourney-rg
- az keyvault secret set --vault-name "devopsjourney-kvtest" --name "AIKEY" --value 39eb55bd-acae-436f-9b83-822e82a46f59
