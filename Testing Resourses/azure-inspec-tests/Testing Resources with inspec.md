# Using Inspec-Azure to test your Azure Resources #

Inspec-Azure is a resource pack provided by Chef that uses the Azure REST API. It allow you to write tests for resources deployed to Azure. These tests can be used to validate the Azures resources deployed via code using Terraform or Azure RM templates. 

## Why Testing##

When you deploy your Azure Resources through code using a CI/CD pipeline, it will go through an approval process. The deployment needs to be validated to show what is expected is to be deployed with the actual state of the resources. The process will use the validation stage to run tests created to test and validate your Azure resources. 


## How does Inspec work? ####

Inspec-Azure works by comparing the actual state of your Azure resources with the desired state declared in your tests. It also detects violations and displays any findings in a report, but you are in control of any remediation. You can use it to review the report and see how compliant it is against any failed test. 

