- **Test Script Name** - ESBJAVA-4579.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Sashika Wijesinghe
- **Created Date** - 21/07/2016

#### **Test Scenario** -
 **Purpose** - This test cover the fix given for the issue raised in https://wso2.org/jira/browse/ESBJAVA-4579

#### **Test Description** -

 **Pre-requisites** 
 

```sh
//Server Name, Servlet Port and the service port
mgt_host            localhost
mgt_https_port      9443
http_serviceport    8280
https_serviceport   8243

// Admin Username and password of the management console
username	admin	
password	admin	

````
Note: ESB artifacts for the scenario is bundled with the attached **_ESBJAVA-4579_1.0.0.car_** file. This test is verified by editing the File Inbound endpoint and verifying the status of the File Inbound Endpoint.

 **Execute the Scenario** -  Set the above properties and run the tool

 
#### **Reference** -
1) https://wso2.org/jira/browse/ESBJAVA-4579
