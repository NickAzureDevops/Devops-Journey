# Deploying Terraform Using Azure DevOps

In this step, we will deploy all the resources required for Azure DevOps and set up the terraform Infrastructure too in Azure. These resources will deploy:

- Azure Container, Registry,
- Azure Virtual Network
- Azure Kubernetes Service
- Azure Log Analytics

Install the Terraform extension/task [here](https://marketplace.visualstudio.com/items?itemName=ms-devlabs.custom-terraform-tasks) to your Azure DevOps organisation

Start by setting up the Pipeline. First, fork a copy of the pipeline and terraform code here and clone it to your Aure DevOps repo. [Pipelines](https://github.com/nicholaschangIT/Devops-Journey/tree/main/AzureDevOpsPipeline)

To create an Azure repository click on repos and import the repo above. This repository will store all the code for the Azure environment. In this lab, there will be two pipelines one for staging and another for production. 

Once imported to the repository, Select Repo and click on set up Build. 

![](/AzureDevOpsPipeline/images/build.png)

Select Existing Azure Pipelines YAML file and find branch/path to the staging.yaml file

![](/AzureDevOpsPipeline/images/pipeline.png)


Review the YAML pipeline and click on run and save to start running the pipeline. 

![](/AzureDevOpsPipeline/images/startpipeline.png)

![](/AzureDevOpsPipeline/images/runningpipeline.png)

