- **Script Name** - API_Tests.jmx
- **Product Name & Version** -  Enterprise Service Bus - 4.9.0
- **Author** - Yasassri Ratnayake
- **Created Date** --08/07/2016

#### Test Scenario -
This script Tests Basic test scenarios related to APIs. This script covers following scenarios

- Creating an API
- Edit an API.
- Invoking APIs with all Resource types. (e.g : GET, POST, PUT etc)
- Create API with multiple resources
- Delete API

#### How to Execute 

##### Pre-requisites

- Set the Following Parameters in server.properties file for this to work
```sh

// Application Server or Tomcat address. Need the JaxRS Basic webapp deployed
backend_host_port	http://192.168.48.231:9781	

// Admin Username and password of the management console
username	admin	
password	admin	
// Servlet port and the service port
mgt_https_port	9443	
http_serviceport	8280	
````
- Deploy JaxRS Basic Backend Service.

After Setting the above Params and deploying the Backend service run the tool.
