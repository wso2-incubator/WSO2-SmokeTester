- **Test Script Name** - HTTPS_InboundEndpoints.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Sashika Wijesinghe
- **Created Date** - 08/07/2016
- **Execute** - Copy the script and relevant artifacts to the "WSO2-SmokeTester/resources/testscripts/ESB/4.9.0" location and run the tool

#### **Test Scenario** -
 **Purpose** - This script covers the use of HTTPS inbound endpoints in ESB 4.9.0

#### **Test Description** -

 **Pre-requisites** - 
  *  Start WSO2 Appication Server and add the attached **_SimpleStockQuoteService.aar_**. 
 *  Open the attached **_Inbound_Endpoint_HTTPS_1.0.0.car_** file and change the relevant backend server hostname and port in **_TestIn-1.0.0.xml_** file
* Copy **_Inbound_Endpoint_HTTPS_1.0.0.car_** file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Artifacts"_ directory
    
 **Execute the Scenarios** - 
 1) Copy the jmeter script file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Scripts"_ location and run the script.
 
 
#### **Reference** -
1) https://docs.wso2.com/display/ESB490/HTTPS+Inbound+Protocol
