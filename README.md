# DevOps-Journey-Using-Azure-DevOps

In this tutorial, I will be demonstrating to you on how you can use Azure DevOps from creating a pipeline to deploying an application to a Kubernetes cluster in Azure. I will be following the post "A DevOps journey using Azure DevOps" by Thomas Thornton.  

<!--more-->

![](/Images/logo.png)

We will be using the following tools:

- Setting up Azure DevOps Environment
- Deploy Resource using Terraform modules
- Deploy a simple test application to Azure AKS
- Using CI/CD to automate the deployment of the process
- Testing the creation of resources using automated testing such as Inspec
- Monitoring and setting up alerts using  Application and Container Insights

1) ***Setting up Azure DevOps Environment***

In this setup, I will show you how to set up the Azure DevOps Environment including the

- Azure DevOps Organisation Setup  
- Azure DevOps Project Creation
- Azure Service Principal Creation

[Set up Guide](<https://github.com/nicholaschangIT/Devops-Journey/blob/main/Devops-Journey/Setting-up-Azure-Devops-Enviornment-Azure> Devops Setup.md)


  - [Set up terraform](https://github.com/nicholaschangIT/DevOps-The-Hard-Way-Azure/blob/main/Terraform-AZURE-Services-Creation/Readme.md)


1.1) Set up Terraform Backend - Create Blob Storage location for Terraform State file

1.2) ***Create Azure AD Group for AKS Admins***

- Create Azure AD AKS Admin Group

2) ***Setup Azure DevOps Pipeline***

This will create all of the Azure resources from the infrastructure in order to run and test applications.

- Pipeline setup- Setting Azure DevOps Pipeline