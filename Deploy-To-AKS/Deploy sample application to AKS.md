**Deploy Sample Application to Azure Kubernetes Services**


This section will deploy a sample application to the Azure Kubernetes Services (AKS). 

- Edit the aspnet.yaml file found in the script folder with your image name and tag number 

For example,  image: azuredevopsjourneyacr.azurecr.io/aspnet:74


Add the AKS Deploy stage to the pipeline. This stage has been added in the DeployAKSpipeline-staging pipeline file. [Deploy Application Insights](/Deploy-To-AKS/Deploy-Appinsight.md)

