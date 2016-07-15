- **Test Script Name** - ESB_CustomProxy.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Sashika Wijesinghe
- **Created Date** - 08/07/2016

#### **Test Scenario** -
 **Purpose** - In this scenario, Custom proxy is created using the existing Esndpoint, Local Entry and Sequence. This scenario covers below features

- Create Endpoint, Sequence and Local entries
- Create a custom proxy using existing artifacts 
- Invoke the service

#### **Test Description** -
 **Pre-requisites**
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

Backend service - Deploy the attached "InfoParser.aar" service. 
//Set the backend service host and port 
backend_host_port   http://192.168.48.231:9781
````


 **Execute the Scenario** -  set the above server properties and run the tool

 
#### **Reference** -
1) https://docs.wso2.com/display/ESB490/Custom+Proxy+Template
