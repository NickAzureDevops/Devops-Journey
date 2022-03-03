#  Deploy App to Azure Container Registry # 

This secontion will deploy an Application to Azure Container Registry.



This lab is to deploy the same Application to Container Registry

The Docker image can be built and ran locally to test - see here

We want to run this Docker build and publish directly to the created Azure Container Registry in lab 2.

Create a new service connection for ACR access.

Within your Azure DevOps Project – select Project Settings
Select Service Connections -> Docker Registry -> Select registry type: Azure Container Registry
Select correct ACR and create service connection name. I have given devopsjourneyacr.azurecr.io as my service connection name