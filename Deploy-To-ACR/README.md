#  Deploy App to Azure Container Registry # 

This secontion will deploy an Application to Azure Container Registry.

Once you have build your docker image running locally [here](/Deploy-To-ACR/docker-image-locally.md) we will now publish it to the Azure Container Registry created in the previous [pipeline](https://github.com/nicholaschangIT/Devops-Journey/tree/main/AzureDevOpsPipeline/staging-pipeline.yml)




Create a new service connection for ACR access.

Within your Azure DevOps Project – select Project Settings
Select Service Connections -> Docker Registry -> Select registry type: Azure Container Registry
Select correct ACR and create service connection name. I have given devopsjourneyacr.azurecr.io as my service connection name
