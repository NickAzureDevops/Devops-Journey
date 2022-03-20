# Using Log Analytics and Container Insights #

You can get data about your container insights from the AKS cluster insight option. Go to your Kubernetes cluster and go to insights under the monitoring section. Select cluster view to see more information. You can also get data from the following too 

- Cluster
- Nodes
- Controllers
- Containers

The performance charts display four performance metrics:

- Node CPU utilization- CPU utilization for the entire cluster. You can filter the results for the time range, select Avg, Min, 50th, 90th, 95th, or Max too. 

![](/Monitoring-and-Alerting/images/nodecpu.png)

- Node memory utilization -  Display data about the memory 

![](/Monitoring-and-Alerting/images/nodememory.png)

- Node count: A node count and status from Kubernetes. 

![](/Monitoring-and-Alerting/images/nodecount.png)


- Active pod count: A pod count and status from Kubernetes. Statuses of the pods can be shown in Total, Pending, Running, Unknown, Succeeded, or Failed. They can be filtered individually or combined too. 

![](/Monitoring-and-Alerting/images/activepodcount.png)
