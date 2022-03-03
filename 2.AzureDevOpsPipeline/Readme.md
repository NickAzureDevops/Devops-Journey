# Deploying Terraform Using Azure DevOps

In this step we will deploy all the resources required for Azure Devops and set up the terraform Infrastructure too in Azure. These resources will deploy:

- Azure Container, Registry,
- Azure Virtual Network
- Azure Kubernetes Service
- Azure Log Analytics

Install the Terraform extension/task [here](https://marketplace.visualstudio.com/items?itemName=ms-devlabs.custom-terraform-tasks) to your Azure DevOps organisation

Start by setting up the Azure Devops Pipeline. First, fork a copy of the pipeline and terraform code here and clone it to your Aure Devops repo. [Pipelines](https://github.com/nicholaschangIT/Devops-Journey/tree/main/AzureDevOpsPipeline)

To create an Azure repository click on repos and import the clone repo above. This respository will store all the codoe for the azure envionrnment. In this lab, there wil be two pipeline one for staging and another for production. 

Once imported to Azure Devops repository, Select Repo and click on set up Build. 

![](/2.AzureDevOpsPipeline/images/build.png)

Select Existing Azure Pipelines YAML file and find branch / path to the staging.yaml file

![](/2.AzureDevOpsPipeline/images/pipeline.png)


Rewview the YAML pipeline and click on run and save to start running the pipeline. 

![](/2.AzureDevOpsPipeline/images/startpipeline.png)

![](/2.AzureDevOpsPipeline/images/runningpipeline.png)

