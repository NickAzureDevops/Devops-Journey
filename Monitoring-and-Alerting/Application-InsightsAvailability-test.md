# Setup an Application Insights Availability test #

Application Insight has an Availability test feature that let you send various ping tests around the world between your app. This can be used to assess whether the application is running too slowly. 


There are four types of availability tests:

- URL ping test- This is used to assess whether your app is responding correctly. You can set up custom criteria like parse dependent requests. 

- Standard test (Preview): ping test that includes SSL verification too.  You can also filter success criteria and standard test info like the HTTP request. 

- Multi-step web test (classic): You can monitor a sequence of URLs and interactions with a website via multi-step web tests. These are created in Visual Studio Enterprise and uploaded to the portal. 

- Custom TrackAvailability test: create a custom application to run availability tests, you can use the TrackAvailability method to send the results to Application Insights.

Both the URL ping test and the multi-step web test rely on public internet to resolve the domain names. When it is not possible, you can use custom TrackAvailability tests instead.



### Creating availability tests ###

I will be creating an availability test to ping my application. 

![](/Monitoring-and-Alerting/images/availabilitytest.png)

Once it has been created, you should get an overall information of the result. 

![](/Monitoring-and-Alerting/images/availabilitytest1.png)

