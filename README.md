# DevOps-Journey-Using-Azure-DevOps

In this tutorial, I will be demonstrating to you on how you can use Azure DevOps from creating a pipeline to deploying an application to a Kubernetes cluster in Azure. I will be following the post "A DevOps journey using Azure DevOps" by Thomas Thornton.  

<!--more-->

![](/Images/logo.png)

We will be using the following for the lab:

- Setting up Azure DevOps Environment
- Deploy Resource using Terraform modules
- Deploy a simple test application to Azure AKS
- Using CI/CD to automate the deployment of the process
- Testing the creation of resources using automated testing such as Inspec
- Monitoring and setting up alerts using  Application and Container Insights

1. ***Setting up Azure DevOps Environment***

In this setup, I will show you how to set up the Azure DevOps Environment including the

- Azure DevOps Organisation Setup, Project Creation and create Service Principal- [Environment-Setup](https://github.com/nicholaschangIT/Devops-Journey/blob/main/Azure-Devops-Enviornment-Setup/Environment-Setup.md)

1.1. Set up Terraform Backend - Create Blob Storage location for Terraform State file

1.2 Create AD Group for AKS Admin

- Create Azure AD AKS Admin Group

2.***Setting up Azure DevOps Environment***

This will create all of the Azure resources from the infrastructure in order to run and test applications.

- Pipeline setup- Setting Azure DevOps Pipeline

3.***Deploy Application to Azure Container Registry***

- Deploy sample Application to Container Registry.
- Build the Docker Image Locally
- Run The Docker Image Locally
- Deploy sample Application to Container Register