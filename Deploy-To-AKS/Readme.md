# Deploy To Azure Kubernetes Services (AKS) # 

This section will be deploying a sample voting app to an AKS cluster. First, we will have to add some changes to the terraform file in order to add AKS permission to ACR, deploy application insight and key vault. 

**Update terraform with AKS ACR role assignment**

- [Add permission to AKS ACR](/Deploy-To-AKS/Update-terraform-AKS-ACR-permission.md)- This will add the nessessary permission to pull the image to the Azure Container Registry. 

**Deploy Application Insights using Terraform**

- [Deploy Application Insights](/Deploy-To-AKS/Deploy-Appinsight.md)- Set up Application insights using terraform module 

**Deploy Azure Key Vault using Terraform**

- [Deploy KeyVault](/Deploy-To-AKS/Keyvault-creation.md) - This will deploy a kayvault and a secret to  Azure

**Publish application to Azure Kubernetes Services**

- [Deploy KeyVault](/Deploy-To-AKS/Deploy-application-to-AKS.md)

 This will publish a sample ASPNET application to the Kerbernetes cluster. 

