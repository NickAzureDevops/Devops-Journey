**Deploy Sample Application to Azure Kubernetes Services**

This section will deploy a sample application to the Azure Kubernetes Services (AKS). 

- Edit the aspnet.yaml file found in the script folder with your image name and tag number 

For example,  image: azuredevopsjourneyacr.azurecr.io/aspnet:74


Add the AKS Deploy stage to the pipeline. This stage has been added in the [DeployAKSpipeline-staging](/Deploy-To-AKS/pipelines/DeployAKSpipeline-staging.yaml)

- update AKS_RG: AKS Resource Group Name and the AKS_NAME: AKS Cluster Name 


The stage will get AKS credentials and deploy the above .yaml file located in the script folder to deploy the sample application. It will also use the default secret AIKEY that is currently in the variable group and create a secret. 

***Run the pipeline***

Run the DeployAKSpipeline-staging pipeline and once it has been successful you should be able to view the application deployed to AKS. To view the application, go to the Azure portal and go to your Kubernetes cluster and select the Services and ingresses. 

![](/Deploy-To-AKS/images/pipelinerun.png)




![](/Deploy-To-AKS/images/sampleapp.png)