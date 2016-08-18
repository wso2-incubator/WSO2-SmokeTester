- **Test Script Name** - HTTPS_InboundEndpoints.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Sashika Wijesinghe
- **Created Date** - 08/07/2016


#### **Test Scenario** -
 **Purpose** - This script covers the use of HTTPS inbound endpoints in ESB 4.9.0

#### **Test Description** -

 **Pre-requisites** - 

   - Set the below parameters in **_server.properties_** file for this to work. (You can configure these properties with parameters relevant for your environment)
   
   **Note** :: To run the script in the local setup, start ESB 490 pack with port offset 1 and the AS server with host name "as.wso2.org" and default port (port offset 0). (Reason for the configuration requirements is that, the cApp is configured to use "http://as.wso2.org:9763" hostname and port reference.
```sh
//Server Name, Servlet Port and the service port
mgt_host            localhost
mgt_https_port      9444
http_serviceport    8281
https_serviceport   8244

// Admin Username and password of the management console
username	admin	
password	admin	

Backend service - Deploy the attached "SimpleStockQuoteService.aar" service. 
//Set the backend service host and port and inbound https port
backend_host_port   	http://as.wso2.org:9763
https_inbound_ep_port   7373
````
**Note** :- 
ESB artifacts for the scenario is bundled with the attached **_Inbound_Endpoint_HTTPS_1.0.0.car_** file. Backend service is configured as 'http://as.wso2.org:9763'. To use the cApp in different backend service, change the backend service references in the cApp as required. (ex: Open the attached **_Inbound_Endpoint_HTTPS_1.0.0.car_** file and change the relevant backend server hostname and port in **_TestIn-1.0.0.xml_** file )

This script use port 7373 as the inbound HTTPS endpoint. Therefore to run this test port 7373 should be enabled in your instance. (If ESB is fronted with Nginx, then enable this port in Nginx configurations)


 **Execute the Scenarios** - 
 1) Set the parameters and backend services as above and run the script
 
 
#### **Reference** -
1) https://docs.wso2.com/display/ESB490/HTTPS+Inbound+Protocol
