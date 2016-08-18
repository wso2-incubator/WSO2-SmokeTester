- **Test Script Name** - HTTP_Endpoint.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Sashika Wijesinghe
- **Created Date** - 08/07/2016

#### **Test Scenario** -
 **Purpose** - This script covers the basic functionalities related to HTTP Endpoints

- Defined HTTP Endpoint - Create, Edit and Delete
- Dynamic HTTP Endpoint - Create and Delete

#### **Test Description** -
 **Pre-requisites** -
  - Set the below parameters in **_server.properties_** file for this to work. (You can configure these properties with parameters relevant for your environment)
```sh
//Server Name, Servlet Port and the service port
mgt_host            localhost
mgt_https_port      9443
http_serviceport    8280

// Admin Username and password of the management console
username	admin	
password	admin	

````

 **Execute the Scenario** -  After setting the above paramters runn the tool

 
#### **Reference** -
1) https://docs.wso2.com/display/ESB490/HTTP+Endpoint
