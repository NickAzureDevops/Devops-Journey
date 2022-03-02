# Deploying Terraform Using Azure DevOps

In this step we will deploy all the resources required for Azure Devops and set up the terraform Infrastructure too in Azure. These resources will deploy:

- Azure Container, Registry,
- Azure Virtual Network
- Azure Kubernetes Service
- Azure Log Analytics

We will start by setting up the Azure Devops Pipeline. First, fork a copy of the pipeline and terraform code here and clone it to your Aure Devops repo. [Pipelines]](https://github.com/nicholaschangIT/Devops-Journey/tree/main/AzureDevOpsPipeline)

To create an Azure repository click on repos and 


Create Azure repository - select Repos & you will see various options to setup a respository (This repository will store code throughout further labs also, please note this!)

Copy contents from this folder into the newly created Azure DevOps repository

Once copied to Azure DevOps repository, Select Repo -> Setup Build

Select Existing Azure Pipelines YAML file and branch / path to the .yaml Azure DevOps Pipeline