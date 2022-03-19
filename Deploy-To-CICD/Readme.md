# Adding CICD to Pipeline 

In this section, we will be looking at how to add CICD to your pipeline so it run automatically when a commit has been applied to the branch. Afterwards, we will look at how you can automate the deployment of the AKS application with the latest image. 

- ### Implement CICD to pipeline

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

This stage will be automating the deployment of the AKS application once the pipeline has been triggered using the manual tag of the image. Every time you update the pods on the AKS cluster, you would need to delete the deployment and re-run the pipeline. We can do this by changing the following code 

```
Before:

image: devopsjourneyacr.azurecr.io/aspnet:74

2) Change the image tag to the latest imagePullPolicy and add the ImagePullPolicy: Always 

After: 

image: azuredevopsjourneyacr.azurecr.io/aspnet:latest
        imagePullPolicy: Always
```
 ImagePullPolicy for a container and the tag of the image affect when the kubelet attempts to download the image from the Azure Container Registry. 

Below is a list of values you can set for imagePullPolicy

IfNotPresent

If the value IfNotPresent is the image, the image is pulled only if it is not already present locally.

Always

- When kubelet launches a container, the kubelet queries the container image registry to resolve the name to retrieve the image. If the kubelet has a container image cached locally, the kubelet uses the cached image; otherwise, the kubelet will pull the image. 

Never

- Do not use kubelet to try downloading the image. If the image is present locally, the kubelet will try to start the container; otherwise, it would fail


4) Update the YML file in the aspnet file with the two changes. - [aspnet.yml](/Deploy-To-CICD/pipelines/scripts/aspnet.yaml)


5) Amend the build stage in the pipeline tag to the latest. 
```
**tags: 'latest'**

```

6) Once the changes have been merged.

- Run the pipeline to start the deployment [staging-pipeline.yml](/Deploy-To-CICD/pipelines/staging-validate.yml). There is also a pipeline for staging- validate that will trigger the staging pipeline to run automatically. 

Checking the ACR you will notice a new Tag shows the latest. 

![](/Deploy-To-CICD/images/updatedimage.png)


As we changed the imagePullPolicy to Always, the new pod also change with the latest image tag: You can view it by running this command: 

kubectl describe pod aspnetcore | grep Image Image: azuredevopsjourneyacr.azurecr.io/aspnet:latest

![](/Deploy-To-CICD/images/updatedimage1.png)


Tips (Please order the pipeline in order of the labs)

- staging pipeline.yml 
- staging validate.yml
- production-Validate.yml
- DR-pipeline.yml 
- production.yml 
