- **Script Name** - ESBJAVA-4137.jmx
- **Product Name & Version** -  Enterprise Service Bus - 4.9.0
- **Author** - Yasassri Ratnayake
- **Created Date** - 18/07/2016
- **Public JIRA** - https://wso2.org/jira/browse/ESBJAVA-4137

#### Test Scenario -.
This script tests the fix done for https://wso2.org/jira/browse/ESBJAVA-4137

#### How to Execute 

##### Pre-requisites

- Set the Following Parameters in server.properties file for this to work
```sh

// Application Server or Tomcat address. Need the following webapp RESTfulService deployed
backend_host_port	http://192.168.48.231:9781	

// Admin Username and password of the management console
username	admin	
password	admin	
// Servlet port and the service port
mgt_https_port	9443	
http_serviceport	8280	
````
- Deploy the Backend Service.

After Setting the above Params and deploying the Backend service run the tool.
