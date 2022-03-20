# DevOps Set up #  

I will be showing you how to set up the Azure DevOps Environment for this lab.

1. Connect to your Azure subscription via Azure Powershell and run both the Azure-Terraform-Remote-Storage and  create-ad-group script to create resources in Azure located under the scripts folder. 

When deploying Terraform you must store the configuration files in a state file; this file will be used to deploy Azure resources. We will be going to create the state file and host it in Azure. (If you are running the script in Azure CLI and it is not running, you would need to make the script executable and to do this you will need to add chmod u+x ./scriptname.

- The terraform-storage script will create Azure Resource Group, Storage Account and Azure Blob storage account

- The create AD group script that will create the active directory group and add the current az login user to Azure AD Group. It will also output the Azure AD group ID. Please make sure you note it down as you will need it when setting up the AKS terraform.

2. Go to [Azure DevOps](https://go.microsoft.com/fwlink/?LinkId=307137/) and select a new organisation if you do not have one to create an account. Otherwise, log in to <https://dev.azure.com/{yourorganization>). For example, mine will be called dev.azure.com/nicholaschang

3. Create a New project, give it a name and a description. Set the project to private.

![](/Azure-Devops-Enviornment-Setup/images/projectcreation.png)

4. At this point we will start creating the service principal that will authenticate to your Azure subscription.

In your project select project settings, select Service Connections under Pipelines. Once selected the service connection go to Azure resource manager and choose Service Principle (Automatic). Enter the subscription and resource group and give the service connection a name to start creating it for your resource. (Please remember to tick the option "grant access to all pipeline")

![ServicePrincipleCreation](/Azure-Devops-Enviornment-Setup/images/SP.png)

![CreationofSP](/Azure-Devops-Enviornment-Setup/images/serviceprinciple.png)

5. In the created connection, click on the “manage service principle” icon then it will be directed back to the Azure portal. Under Branding & Properties, edit the name and click on save.

![RenameIdentity](/Azure-Devops-Enviornment-Setup/images/renameidentity.png)

6. The next step is to give the identity a contributor role access.

- In your Azure Subscription, click on Access Control (IAM)
- Click on Add and select add role assignment
- Select Contributor role, go to next option and choose on Users, group or service principle and select Service principle that has been created previously then click on review and assign.
