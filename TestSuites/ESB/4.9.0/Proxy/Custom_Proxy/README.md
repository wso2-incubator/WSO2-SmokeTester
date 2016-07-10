- **Test Script Name** - ESB_CustomProxy.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Sashika Wijesinghe
- **Created Date** - 08/07/2016
- **Execute** - Copy the script and relevant artifacts to the "WSO2-SmokeTester/resources/testscripts/ESB/4.9.0" location and run the tool

#### **Test Scenario** -
 **Purpose** - In this scenario, Custom proxy is created using the existing Esndpoint, Local Entry and Sequence. This scenario covers below features

- Create Endpoint, Sequence and Local entries
- Create a custom proxy using existing artifacts 
- Invoke the service

#### **Test Description** -
 **Pre-requisites**
- Start WSO2 Appication Server and deploy the attached **_InfoParser.aar_** service.
- Set the backend server hostname and port in WSO2-SmokeTester/resources/configs/**_server.properties_** file

 **Execute the Scenario** -  Copy the script file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Scripts"_ location and run the script.

 
#### **Reference** -
1) https://docs.wso2.com/display/ESB490/Custom+Proxy+Template
