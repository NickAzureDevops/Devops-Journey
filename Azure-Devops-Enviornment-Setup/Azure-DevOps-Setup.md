# DevOps Set up

I will be showing you on how to set up the Azure Devops Environemnt for this lab.

1. Connect to your Azure subscription via Azure Powershell and run the terraform-stroage.sh and the create-ad-group.sh script to create resources in azure under the scripts folder. When deploying Terraform, you must store the configuration files in a state file; this file will be used deploy azure resources. We will be going to create the state file and host it an Azure.

- The terraform-storage script will create azure Resource Group, Storage Account and Azure Blob storage account

- Create AD group script will create the active directory group and add current az login user to Azure AD Group

2. Go to [Azure DevOps](https://go.microsoft.com/fwlink/?LinkId=307137/) and select a new organisation if you do not have one to create an account. Otherwise, log in to <https://dev.azure.com/{yourorganization>). for example, mine will be called dev.azure.com/nicholaschang







