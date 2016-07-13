- **Script Name** - HTTP_Inbound.jmx
- **Product Name & Version** -  Enterprise Service Bus - 4.9.0
- **Author** - Yasassri Ratnayake
- **Created Date** --08/07/2016

#### Test Scenario -
This script Tests Basic test scenarios related to HTTP Inbound Endpoints. This script covers following scenarios

- Creating an HTTP Inbound EP 
- Edit the inbound
- Invoking The Endpoint
- Create API with multiple resources
- Delete API

#### How to Execute 

##### Pre-requisites

- Set the Following Parameters in server.properties file for this to work
```sh

// Admin Username and password of the management console
username	admin	
password	admin

// Servlet port and the port that should be used by the Inbound EP
mgt_https_port	9443	
http_inbound_ep_port 8855



````

After Setting the above Params run the tool.
