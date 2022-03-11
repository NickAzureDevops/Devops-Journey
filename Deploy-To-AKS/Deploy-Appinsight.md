**Deploy Application Insights using terraform**

Make a copy of the YAML file called DeployAKSpipeline-staging found in the pipeline folder. Comment out the aks stage from the file. 

- Add the application insight modules. [Appinsight Module](https://github.com/nicholaschangIT/Devops-Journey/tree/main/Deploy-To-AKS/terraform/modules/appinsights)

- Update the main.tf with the changes 

```
module "appinsights" {
  source           = "./modules/appinsights"
  name             = var.app_insights_name
  location         = var.location
  environment      = var.environment
  application_type = var.application_type
}
```
- Update variable.tf for the app insight module by adding two variables. "app_insights_name and application_type"

```
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
