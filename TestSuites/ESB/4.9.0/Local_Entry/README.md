- **Test Script Name** - ESB_LocalEntry.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Sashika Wijesinghe
- **Created Date** - 08/07/2016


#### **Test Scenario** -
 **Purpose** - This script covers the basic functionalities related to Local Entry

- Local Entry - Create, Edit and Delete


#### **Test Description** -
 **Pre-requisites** - 
 
  - Set the below parameters in **_server.properties_** file for this to work. (You can configure these properties with parameters relevant for your environment)
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

 **Execute the Scenario** -  Set the above server properties and run the tool

 
#### **Reference** -
1) https://docs.wso2.com/display/ESB490/Creating+ESB+Artifacts#CreatingESBArtifacts-Workingwithlocalentries
