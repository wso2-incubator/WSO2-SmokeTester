- **Script Name** - MessageStore_and_Forward.jmx
- **Product Name & Version** -  Enterprise Service Bus - 4.9.0
- **Author** - Yasassri Ratnayake
- **Created Date** --08/07/2016

#### Test Scenario -
This script covers message store and forward scenario where following message route will take place.

**Message → API → Store Mediator → JMS Message Store → ActiveMQ → Message Forwarding Processor → BackEnd**

Ref : https://docs.wso2.com/display/ESB490/Store+and+Forward+Using+JMS+Message+Stores

#### How to Execute 

##### Pre-requisites

- Set the Following Parameters in server.properties file for this to work
```sh
// Active MQ endpoint address in the following Format
activemq_ep	tcp://192.168.48.231:61616

// Application Server or Tomcat address. Need the following webapp RESTfulService deployed
backend_host_port	http://192.168.48.231:9781	

// Admin Username and password of the management console
username	admin	
password	admin	
// Servlet port and the service port
mgt_https_port	9443	
http_serviceport	8280	
````
- Copy ActiveMQ dependency Jars to WSO2 server.
- Deploy the Backend Service.

After Setting the above Params and deploying the Backend service run the tool.
