- **Test Script Name** - ESB_EIPs.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Sashika Wijesinghe
- **Created Date** - 08/07/2016

#### **Test Scenario** -
 **Purpose** - This script covers some of the Enterprise Integration Patterns created using the constructs of WSO2 ESB 4.9.0
- Message Channels EIP - This EIP covers how one application communicates with another using messaging
- Pipes and Filters - This EIP covers how to perform complex processing on a message
- Message Router - This EIP covers how to decouple individual processing steps so that messages can be passed to different filters depending on conditions
- Message Translator - This EIP covers how systems using different data formats communicate with each other using messaging
- Message Endpoint - This EIP covers how an application connects to a messaging channel to send and receive messages
- Point-to-Point Channel - This EIP covers how the caller can be sure that exactly one receiver will receive the message or perform the call.
- Data Type Channel EIP - This covers how the application sends a data item such that the receiver will know how to process it. (This also covers how fault messages are handled)
- Message Bridge EIP -  This covers how multiple messaging systems can be connected so that messages available on one are also available on the others

#### **Test Description** -

Test Details and the pre-conditions relevant for each EIP is described below in detail.
##### **Scenario 01**  - Message Channels EIP
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
//Set the backend service host and port
backend_host_port	http://as.wso2.org:9763

````
Note: ESB artifacts for the scenario is bundled with the attached **_EIP01_MessageChannels_1.0.0.car_** file. Backend service is configured as 'http://as.wso2.org:9763'. To use the cApp in different backend service, change the backend service references in the cApp as required. (ex: Open the attached **_EIP01_MessageChannels_1.0.0.car_** file and change the relevant backend server hostname and port in _EIP01_MsgChannels_Seq-1.0.0.xml_ file )

    

##### **Scenario 02**  - Pipes and Filters EIP
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
//Set the backend service host and port
backend_host_port	http://as.wso2.org:9763

````
Note: ESB artifacts for the scenario is bundled with the attached **_EIP02_PipesAndFilters_1.0.0.car_** file. Backend service is configured as 'http://as.wso2.org:9763'. To use the cApp in different backend service, change the backend service references in the cApp as required. (ex: Open the attached **_EIP02_PipesAndFilters_1.0.0.car_** file and change the relevant backend server hostname and port in _EIP02_PipesAndFilters_Seq-1.0.0.xml_ file )


##### **Scenario 03**  - Message Routers EIP
 **Pre-requisites** - 
 
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

Backend services - Deploy the attached "SimpleStockQuoteService.aar", "HelloServic" and "EchoService" service. 
//Set the backend service host and port
backend_host_port	http://as.wso2.org:9763

````
Note: ESB artifacts for the scenario is bundled with the attached **_EIP03_MessageRouter_1.0.0.car_** file. Backend service is configured as 'http://as.wso2.org:9763'. To use the cApp in different backend service, change the backend service references in the cApp as required. (ex: Open the attached **_EIP03_MessageRouter_1.0.0.car_** file and change the relevant backend server hostname and port in _EIP03_MessageRouter_Proxy-1.0.0.xml_ file )

##### **Scenario 04**  - Message Translator EIP
 **Pre-requisites** - 
 
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

Backend services - Deploy the attached "SimpleStockQuoteService.aar" service. 
//Set the backend service host and port
backend_host_port	http://as.wso2.org:9763

````
Note: ESB artifacts for the scenario is bundled with the attached **_EIP04_MessageTranslator_1.0.0.car_** file. Backend service is configured as 'http://as.wso2.org:9763'. To use the cApp in different backend service, change the backend service references in the cApp as required. (ex: Open the attached **_EIP04_MessageTranslator_1.0.0.car_** file and change the relevant backend server hostname and port in _EIP04_MessageTranslator-1.0.0.xml_ file )


##### **Scenario 05**  - Message Endpoints EIP
 **Pre-requisites** - 
 
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

Backend services - Deploy the attached "SimpleStockQuoteService.aar" service. 
//Set the backend service host and port
backend_host_port	http://as.wso2.org:9763

````
Note: ESB artifacts for the scenario is bundled with the attached **_EIP05_MessageEndpoints_1.0.0.car_** file. Backend service is configured as 'http://as.wso2.org:9763'. To use the cApp in different backend service, change the backend service references in the cApp as required. (ex: Open the attached **_EIP05_MessageEndpoints_1.0.0.car_** file and change the relevant backend server hostname and port in _EIP05_MessageEndpoint-1.0.0.xml_ file )

##### **Scenario 06**  - Point-to-Point Channel EIP
 **Pre-requisites** - 
 
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

Backend services - Deploy the attached "SimpleStockQuoteServiceVersion1.aar" and "SimpleStockQuoteServiceVersion2.aar" services.  (These two services will pass different headers when invoking the _getQuote_ services)
//Set the backend service host and port
backend_host_port	http://as.wso2.org:9763

````
Note: ESB artifacts for the scenario is bundled with the attached **_EIP06_PointToPoint_1.0.0.car_** file. Backend service is configured as 'http://as.wso2.org:9763'. To use the cApp in different backend service, change the backend service references in the cApp as required. (ex: Open the attached **_EIP06_PointToPoint_1.0.0.car_** file and change the relevant backend server hostname and port in _EIP06_PointToPointEndpoint-1.0.0.xml_ file )
 
##### **Scenario 07**  - Point-to-Point Channel EIP
Fault Handling scenario is verified using the 'MarketAtivity' Service.

 **Pre-requisites** - 
 
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

Backend services - Deploy the attached "SimpleStockQuoteService.aar" service. 
//Set the backend service host and port
backend_host_port	http://as.wso2.org:9763

````
Note: ESB artifacts for the scenario is bundled with the attached **_EIP08_DataTypeChannel_1.0.0.car_** file. Backend service is configured as 'http://as.wso2.org:9763'. To use the cApp in different backend service, change the backend service references in the cApp as required. (ex: Open the attached **_EIP08_DataTypeChannel_1.0.0.car_** file and change the relevant backend server hostname and port in _EIP08_DataTypeEndpoint-1.0.0.xml_ file )

##### **Scenario 08**  - Message Bridge Channel EIP

 **Pre-requisites** - 
 
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

Backend services - Deploy the attached "SimpleStockQuoteService.aar" service. 
//Set the backend service host and port
backend_host_port	http://as.wso2.org:9763

````
Note: ESB artifacts for the scenario is bundled with the attached **_EIP09_MessageBridge_1.0.0.car_** file. Backend service is configured as 'http://as.wso2.org:9763'. To use the cApp in different backend service, change the backend service references in the cApp as required. (ex: Open the attached **_EIP09_MessageBridge_1.0.0.car_** file and change the relevant backend server hostname and port in _MessageTranslate-1.0.0.xml_ file)

 **Execute the Scenarios** - 
 1) Configure above mentioned properties and backend services run the tool.
 
 
#### **Reference** -
For more information on EIPs and the scenarios, refer
1) https://docs.wso2.com/display/IntegrationPatterns/Enterprise+Integration+Patterns+with+WSO2+ESB

