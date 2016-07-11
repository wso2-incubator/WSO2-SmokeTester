
- **Test Script Name** - ESB_Message_Stores.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Nuwan Silva
- **Created Date** - 11/07/2016

#### **Test Scenario** -
 **Purpose** - This script covers the basic functionalities related to Store mediator with In Memory, JDBC, JMS and RabbitMQ message stores.
- Create Message Stores for In Memory, JDBC, JMS and RabbitMQ.
- Create proxy service with store mediator with the above message stores (In Memory, JDBC, JMS and RabbitMQ).
- Invoke the proxy service with each message store.


#### **Test Description** -
 **Pre-requisites**
- JDBC Message Store
Follow [1] to create the required databases
Add MySQL JDBC driver to the {ESB_HOME}/repository/components/lib
configure the scripts
	- jdbc.driver
	- jdbc.url
	- jdbc.username
	- jdbc.password

- RabbitMQ Message Store
Configure RabbitMQ server configs in the script
	- rabbitmq.host
	- rabbitmq.port

- JMS Message Store
Follow [2] to setup ESB server with ActiveMQ server
Configure ActiveMQ server configs in the script
	- jms.host
	- jms.port

 **Execute the Scenario** -  Copy the script file to _"WSO2-SmokeTester/resources/testscripts/scripts"_ location and run the script.


#### **Reference** -
1) 
