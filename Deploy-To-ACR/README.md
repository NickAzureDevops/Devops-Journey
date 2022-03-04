#  Deploy App to Azure Container Registry # 

This secontion will deploy an Application to Azure Container Registry.

Once you have build your docker image running locally [here](/Deploy-To-ACR/docker-image-locally.md) we will now publish it to the Azure Container Registry created in the previous [pipeline](https://github.com/nicholaschangIT/Devops-Journey/blob/main/AzureDevOpsPipeline/pipelines/staging-pipeline.yml)


Head back into the Azure Devops portal and create a new service connection for the ACR access. In your Azure Devops Project click on Select project settings and Service Sonnections then Docker Registry. Select registry type Azure Container Registry. 

After selected Azure Container Registry find your subscription and your ACR from Azure and give it a name  

![](/Deploy-To-ACR//images/dockerSP.png)

Make sure you commit your code so you have the aspnet-core-dotnet-core folder in your Azure Devops Repo.  

Build your pipeline and select the [here](/Deploy-To-ACR/docker-image-locally.md). The follwoing has been added to the previous pipeline and a build stage. 

- Repository: ACR repository name
- Dockerfile: Dockerfile location
- ContainerRegistry: Service connection name of container registry

Run the pipeline and you should see a build stage has been added to it. 


![](/Deploy-To-ACR//images/buildstage.png)

![](/Deploy-To-ACR//images/buildprogress.png)

Head back to Azure portal and go to your Container registry and you should have the image in the repository

![](/Deploy-To-ACR//images/imagerepo.png)

![](/Deploy-To-ACR//images/imagerpeo1.png)
