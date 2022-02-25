# DevOps Set up

I will be showing you on how to set up the Azure Devops Environemnt for this lab.

1. Connect to your Azure subscription via Azure Powershell and run the Azure-Terraform-Remote-Stroage and the create-ad-group script to create resources in Azure located under the scripts folder. When deploying Terraform, you must store the configuration files in a state file; this file will be used to deploy Azure resources. We will be going to create the state file and host it in Azure. (If you are running the script in Azure CLI and it is not running, you would need to make the script executable and to do this you will need to add chmod u+x ./scriptname.

- The terraform-storage script will create azure Resource Group, Storage Account and Azure Blob storage account

- Create AD group script will create the active directory group and add current az login user to Azure AD Group. It will also output the Azure AD group ID. Please make sure you note it down as you will need it when setting up the AKS terraform.

2. Go to [Azure DevOps](https://go.microsoft.com/fwlink/?LinkId=307137/) and select a new organisation if you do not have one to create an account. Otherwise, log in to <https://dev.azure.com/{yourorganization>). for example, mine will be called dev.azure.com/nicholaschang

