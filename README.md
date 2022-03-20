# DevOps-Journey-Using-Azure-DevOps

In this tutorial, I will be demonstrating to you on how you can use Azure DevOps from creating a pipeline to deploying an application to a Kubernetes cluster in Azure. I will be following the post "A DevOps journey using Azure DevOps" by Thomas Thornton.  

<!--more-->

![Logo](/Images/logo.png)

We will be using the following for the lab:

- Setting up Azure DevOps Environment
- Deploy Resource using Terraform modules
- Deploy a simple test application to Azure AKS
- Using CI/CD to automate the deployment of the process
- Testing the creation of resources using automated testing such as Inspec
- Monitoring and setting up alerts using  Application and Container Insights

1. ***Setting up Azure DevOps Environment***

In this setup, I will show you how to set up the Azure DevOps Environment and create the group required for AKS.

1.1 [Azure DevOps Setup](https://github.com/nicholaschangIT/Devops-Journey/blob/main/Azure-Devops-Enviornment-Setup/Environment-Azure-DevOps) - This will set up the Azure DevOps Organisation Setup, Project Creation and create Service Principal.

- Creation of Blob Storage location for Terraform State file
- Create AD Group for AKS Admin Group

2.***Setting up Azure DevOps Environment***

This will create all of the Azure resources from the infrastructure in order to run and test applications.

2.1 [Pipeline setup](https://github.com/nicholaschangIT/Devops-Journey/blob/main/AzureDevOpsPipeline) - Setting Azure DevOps Pipeline with creating the following resources

- Azure Container Registry
- Azure Virtual Network
- Azure Kubernetes Service
- Azure Log Analytics

3.***Deploy Application to Azure Container Registry***

3.1 [Container Registry Set up](https://github.com/nicholaschangIT/Devops-Journey/tree/main/Deploy-To-ACR) This will set up image and deploy to container registry. 

- Deploy a Application to Container Registry.
- Build the Docker Image Locally
- Run Docker Image Locally
- Deploy Application to Container Register

4.***Deploy Application to Azure Kubernetes Cluster***

3.1 [AKS-Setup](https://github.com/nicholaschangIT/Devops-Journey/tree/main/Deploy-To-AKS) This will the Azure Kubernetes Services in Azure. 

- Add AKS ACR Role assignment- Terraform to add role assignment for AKS managed identity to access the deployed ACR

- Add Application Insights to Terraform

- Application Insights -  monitor the application once deployed

- Add Azure Key Vault to Terraform - store secrets used the Azure DevOps Variable Group.

- Update Pipeline to Deploy Application to AKS

5.***CI/CD*** [Deploy-To-CICD](https://github.com/nicholaschangIT/Devops-Journey/tree/main/Deploy-To-CICD)- Pipeline Trigger for automatic pipeline runs and automated deployment of your AKS Application

6.***Testing Azure Resourses*** [Testing](https://github.com/nicholaschangIT/Devops-Journey/tree/main/Testing-Resourses)

- Inspec Testing using Azure DevOps Pipeline
- Run Inspec-Tests using Azure DevOps
- View Inspec reports in Azure DevOps

7.***Monitoring and Alerting*** [Montioring](https://github.com/nicholaschangIT/Devops-Journey/tree/main/Monitoring-and-Alerting)

- Using Application Insights to view telemetry data!
- Configure availability test using Application Insights
- Reviewing Log Analytics Container Insights


Tips (Please run the pipeline according to the labs in order). 

- staging pipeline.yml 
- staging validate.yml
- production-validate.yml
- production.yml 