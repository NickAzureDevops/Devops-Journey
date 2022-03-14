# Adding CICD to Pipeline 

In this section we will be looking at how to add CICD to your pipeline so it run automatically when a commit has been applied to the branch. Afterwards, we will look at how you can automate the deployment of the AKS application with the latest image. 

- ### Implement CICD ti pipeline

To add continuous integration to your pipeline you will need to change the following code 

Old 

trigger - none 

New 

```
trigger:
  batch: true 
  branches:
    include:
      - master

```

### Automated deployment of your AKS Application ###
