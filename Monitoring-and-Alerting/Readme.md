# Montioring and Alerting #

In this last section, we will look into monitoring and setting up alerts for the resources. 

We will cover 

- Application Insights logs and metrics
- [Set up an Application Insights Availability test](/Monitoring-and-Alerting/Application-InsightsAvailability-test.md)
- [Use of Log Analytics along with container insights](/Monitoring-and-Alerting/Log-Analytics-and-container-insights.md)

## Application Insight logs and Metrics ##

This will cover using applications insights to track and monitor the deployment created using metrics. Application insight is a feature of Azure monitor that let you monitor live applications. it can detect performance anomalies and includes tools to fix issues and track what users are doing with your app. 

#### View Application insights in Azure Portal ####

- Open the Application insights resource that was created in the Azure portal and click on live metrics. Please make a note of the ingress IP address of the application. 

- Live Metrics- This is a live metric in real-time of the running application. This can be used to ensure everything is working as predicated when deploying the app.  

![](/Monitoring-and-Alerting/images/livemetrics.png)

- Transaction search for instance data

This is another feature that let you filter events such as requests and exceptions or page views. 

![](/Monitoring-and-Alerting/images/tranactionsearch.png)


- Viewing failures easily- This displays any failures within your app.

![](/Monitoring-and-Alerting/images/Failures.png)


- Application map- shows each component connected with your app and the distance between them 

![](/Monitoring-and-Alerting/images/applicationmap.png)


- Smart detection and manual alerts 

This can create rules to detect any alerts, performances issue or failures in your application. According to Microsoft Docs "If there is a sudden rise in failure rates or abnormal patterns in client or server performance, you get an alert". 

![](/Monitoring-and-Alerting/images/smartdetection.png)


- Usage analysis - This shows the event of the user interaction to your app. It allows users to filter and generate graphs for reporting. For more information about users, you can also go to the users’ tab to show more data. 

![](/Monitoring-and-Alerting/images/events.png)
