
# Build the Docker Image Locally # 

We will start by building the docker image locally. This can be done by navigating to the app directory and typing this command “build -t devopsjourneyapp.” to start building your image on your docker desktop.  The -t in the command is for tagging the name of the image and the . is telling docker it is in the current directory. 
 
![](/Deploy-App-To-AzureContainerRegistry/images/dockerimageprocess.png)

![](/Deploy-App-To-AzureContainerRegistry/images/dockerimage.png)


After the Docker image is created, run the following command to confirm the Docker image is on your machine. 

docker image ls
![](/Deploy-App-To-AzureContainerRegistry/images/dockerimagelocally.png)

Now that the Docker image has been created, you can run the container locally. 

To run the Docker container, run the following command

docker run -tid devopsjourneyapp

You can confirm it is running by running docker container ls as shown below too. 

![](/Deploy-App-To-AzureContainerRegistry/images/dockerimagelocally.png)

t stands for a TTY console
i stands for interactive
d stands for detach so your terminal isn't directly connected to the Docker container

You should now have a working docker image running locally 