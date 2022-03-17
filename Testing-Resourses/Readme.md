# Testing infrastructure #

At this stage, we will be looking at testing the resources for the infrastructure. 

- We will be using Inspec-Azure for testing 
- Integrate it using Azure DevOps. 
 
- Please Note: There is currently an issue regarding running Inspec-Azure - please see how to resolve it here: [inspec-azure#592](https://github.com/inspec/inspec-azure/issues/592)

### Using Inspec-Azure to test your Azure Resources ###

Inspec-Azure is a resource pack provided by Chef that uses the Azure REST API. It allows you to write tests for resources deployed to Azure. These tests can be used to validate the Azures resources deployed via code using Terraform or Azure RM templates. 

### Why Testing###

When you deploy your Azure Resources through code using a CI/CD pipeline, it will go through an approval process. The deployment needs to be validated to show what is expected is to be deployed with the actual state of the resources. The process will use the validation stage to run tests created to test and validate your Azure resources. 

### How does Inspec work? ####

Inspec-Azure works by comparing the actual state of your Azure resources with the desired state in your tests. It detects violations and displays generate a report, but you are in control of any remediation. You can use it to review the report and see how compliant it is against any failed test. 

1)  Install Inspec from here https://www.inspec.io/downloads/

2)  Set up Service Principle with Contributor/Reader access here 

```
az ad sp create-for-rbac --name myServicePrincipalName \
                         --role reader \
                         --scopes /subscriptions/mySubscriptionID/

```

3)  Set up Environment Variables to connect to the Service Principle. This can be done by using the PowerShell command: 

```
$env:AZURE_SUBSCRIPTION_ID="<subscription id>"
$env:AZURE_CLIENT_ID="<client id>"
$env:AZURE_CLIENT_SECRET="<client secret>"
$env:AZURE_TENANT_ID="<tenant id>"

```

Please ensure the Service Principle is added to the keyvault using the access policy. 

4) Create an Inspec profile in the Testing-Resources directory 

inspect init profile --platform azure azure-Inspec-tests. 

I have created it using a Mac, if you use Windows you might get a different location. You will get something similar to![this](/Testing-Resourses/Readme.md)


![](/Testing-Resourses/images/Inspec-profile.png)

5) Copy all the files in the controls folder to your machine and change the required variable if needed. 

- AKS
- Application Gateway
- Azure Container Registry
- Key Vault
- Virtual Network

6) Run inspec locally by running "inspec exec azure-inspec-tests -t azure://" Please make sure your same directory as the Inspec profile. 

As you can see when the test is run the result shows you what is wrong. In this example, test of the subnet should be “aks,appgw”, but it was set the opposite. Change these in the file and the test should run successful. 

![](/Testing-Resourses/images/inspec-running1.png)

![](/Testing-Resourses/images/inspec-running2.png)

## Integration with  Azure DevOps## 

In the previous section, we have successfully run tests locally. Now, we will deploy it via Azure DevOps. By running it in a pipeline, it can easily alert issues to others in your project. We will be looking at how to validate the test of what is expected to be deployed to the actual resources. 

- Before running Inspec in the pipeline, you will need to get the information from the Service Principle created previously. 

- Azure Subscription ID 
- Azure Client ID 
- Azure Client Secret 
- Azure Tenant ID


Run the following command to update the key vault. 

- az keyvault secret set --vault-name "devopsjourneytest-kvtest" --name "AZURECLIENTID" --value "8a4fd599-8cd5-4c9b-ad39-e96dee2ddfca"

- az keyvault secret set --vault-name "devopsjourneytest-kvtest" --name "AZURECLIENTSECRET" --value "1-K7Q~K4.-8i.Bn.DUcyGJCUX5CdW37Oxh7cs"

- az keyvault secret set --vault-name "devopsjourneytest-kvtest" --name "AZURESUBSCRIPTIONID" --value "f55aba78-6a4c-4da4-84be-d4037def0d50"

- az keyvault secret set --vault-name "devopsjourneytest-kvtest" --name "AZURETENANTID" --value "85c4cc12-7b58-4cd2-84c4-c7b9698d8670"

## Running Pipeline ## 


![](/Testing-Resourses/images/inspec-running1.png)


