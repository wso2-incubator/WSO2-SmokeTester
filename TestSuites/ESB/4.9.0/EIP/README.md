- **Test Script Name** - ESB_EIPs.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Sashika Wijesinghe
- **Created Date** - 08/07/2016
- **Execute** - Copy the script and relevant artifacts to the "WSO2-SmokeTester/resources/testscripts/ESB/4.9.0" location and run the tool

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
  *  Start WSO2 Appication Server and add the attached **_SimpleStockQuoteService.aar_**. 
 *  Open the attached **_EIP01_MessageChannels_1.0.0.car_** file and change the relevant backend server hostname and port in **_EIP01_MsgChannels_Seq-1.0.0.xml_** file
* Copy **_EIP01_MessageChannels_1.0.0.car_** file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Artifacts"_ directory
    

##### **Scenario 02**  - Pipes and Filters EIP
 **Pre-requisites** - 
  *  Start WSO2 Appication Server and add the attached **_SimpleStockQuoteService.aar_**. 
 *  Open the attached **_EIP02_PipesAndFilters_1.0.0.car_** file and change the relevant backend server hostname and port in **_EIP02_PipesAndFilters_Seq-1.0.0.xml_** file
* Copy **_EIP02_PipesAndFilters_1.0.0.car_** file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Artifacts"_ directory

##### **Scenario 03**  - Message Routers EIP
 **Pre-requisites** - 
  *  Start WSO2 Appication Server and add the attached **_SimpleStockQuoteService.aar_**. (For this scenario we are using 3 backend services hosted in AS. In addition to the _SimpleStockQuoteService.aar_ service, default _HelloService_ and _EchoService_ is used.)
 *  Open the attached **_EIP03_MessageRouter_1.0.0.car_** file and change the relevant backend server hostname and port in **_EIP03_MessageRouter_Proxy-1.0.0.xml_** file
* Copy **_EIP03_MessageRouter_1.0.0.car_** file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Artifacts"_ directory


##### **Scenario 04**  - Message Translator EIP
 **Pre-requisites** - 
  *  Start WSO2 Appication Server and add the attached **_SimpleStockQuoteService.aar_**. 
 *  Open the attached **_EIP04_MessageTranslator_1.0.0.car_** file and change the relevant backend server hostname and port in **_EIP04_MessageTranslator-1.0.0.xml_** file
* Copy **_EIP04_MessageTranslator_1.0.0.car_** file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Artifacts"_ directory

##### **Scenario 05**  - Message Endpoints EIP
 **Pre-requisites** - 
  *  Start WSO2 Appication Server and add the attached **_SimpleStockQuoteService.aar_**. 
 *  Open the attached **_EIP05_MessageEndpoints_1.0.0.car_** file and change the relevant backend server hostname and port in **_EIP05_MessageEndpoint-1.0.0.xml_** file
* Copy **_EIP05_MessageEndpoints_1.0.0.car_** file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Artifacts"_ directory

##### **Scenario 06**  - Point-to-Point Channel EIP
 **Pre-requisites** - 
  *  Start WSO2 Appication Server and add the attached **SimpleStockQuoteServiceVersion1.aar_** and **SimpleStockQuoteServiceVersion2.aar_**  (These two services will pass different headers when invoking the _getQuote_ services)
 *  Open the attached **_EIP06_PointToPoint_1.0.0.car_** file and change the relevant backend server hostname and port in **_EIP06_PointToPointEndpoint-1.0.0.xml_** file
* Copy **_EIP06_PointToPoint_1.0.0.car_** file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Artifacts"_ directory


##### **Scenario 07**  - Point-to-Point Channel EIP
Fault Handling scenario is verified using the 'MarketAtivity' Service.

 **Pre-requisites** - 
  *  Start WSO2 Appication Server and add the attached **SimpleStockQuoteService.aar_** 
 *  Open the attached **_EIP08_DataTypeChannel_1.0.0.car_** file and change the relevant backend server hostname and port in **_EIP08_DataTypeEndpoint-1.0.0.xml_** file
* Copy **_EIP08_DataTypeChannel_1.0.0.car_** file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Artifacts"_ directory

##### **Scenario 08**  - Message Bridge Channel EIP

 **Pre-requisites** - 
  *  Start WSO2 Appication Server and add the attached **SimpleStockQuoteService.aar_** 
 *  Open the attached **_EIP09_MessageBridge_1.0.0.car_** file and change the relevant backend server hostname and port in **_MessageTranslate-1.0.0.xml_** file
* Copy **_EIP09_MessageBridge_1.0.0.car_** file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Artifacts"_ directory

 **Execute the Scenarios** - 
 1) Configure above mentioned backends and add the ESB artifacts to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Artifacts"_ location.
2) Copy the script file _"ESB_EIPs.jmx"_ to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Scripts"_ location and run the script.
 
 
#### **Reference** -
For more information on EIPs and the scenarios, refer
1) https://docs.wso2.com/display/IntegrationPatterns/Enterprise+Integration+Patterns+with+WSO2+ESB

