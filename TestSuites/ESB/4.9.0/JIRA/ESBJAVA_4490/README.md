- **Test Script Name** - ESBJAVA-4490.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Sashika Wijesinghe
- **Created Date** - 21/07/2016

#### **Test Scenario** -
 **Purpose** - This test cover the fix given for the issue raised in https://wso2.org/jira/browse/ESBJAVA-4490

#### **Test Description** -
 This scenario is used to verify the fix given by WSO2-CARBON-PATCH-4.4.0-0115 . (Patch WSO2-CARBON-PATCH-4.4.0-0115 fixes a regression issue introduced by WSO2-CARBON-PATCH-4.4.0-0046 where BlockingMsgSender in message processors fail to deal with certain errors properly when OUT_ONLY is set to true. Due to this issue NumberFormatException occurs and execution of the fault sequence blocked). To verify the fix given by the patch, this test scenario calls to the counter application (RESTfulService. war) deployed in the backend when the fault sequence fits. If the scenario executed successfully, then it will move to a customized fault sequence via message processor and send a request to the dummy service and increase the request count by 1.
 
 **Pre-requisites** 
 
 **Note** :: To run this test in the local machine, you have to set up ActiveMQ instance and a backend service using the given web app.
```sh
//Server Name, Servlet Port and the service port
mgt_host            localhost
mgt_https_port      9443
http_serviceport    8280
https_serviceport   8243

// Admin Username and password of the management console
username	admin	
password	admin	

Backend service - Deploy the attached services "RESTfulService.war" service.
//Set the backend service host and port
backend_host_port	https://as.wso2.org:9443

````
Note: ESB artifacts for the scenario is bundled with the attached **_ESBJAVA_4490_1.0.0.car_** file. Backend service is configured as 'https://as.wso2.org:9443'. 

To use the cApp in different backend service, change the backend service references in the cApp as required. (ex: Open the **_ESBJAVA_4490_1.0.0.car_** file and change the backend server hostname and port in _sample_fault-1.0.0.xml_.
Also change the ActiveMQ provider URL in In _MS1-1.0.0.xml_.


 **Execute the Scenario** -  Set the above properties and backends and run the tool

 
#### **Reference** -
1) https://wso2.org/jira/browse/ESBJAVA-4490
