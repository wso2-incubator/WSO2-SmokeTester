- **Test Script Name** - ESB_ServiceChaining.jmx
- **Product Name & Version** - Enterprise Service Bus - 4.9.0
- **Author** - Sashika Wijesinghe
- **Created Date** - 08/07/2016
- **Execute** - Copy the script and relevant artifacts to the "WSO2-SmokeTester/resources/testscripts/ESB/4.9.0" location and run the tool

#### **Test Scenario** -
 **Purpose** - This test integrates several services through the ESB and expose it as an aggregated single service.

#### **Test Description** -
Backend Services - Sample backend services containg in the _AppServerServices_1.0.0.car_

ESB Artifacts - ESB artifacts are bundled to a cApp called _Service_Chaining.car_


 **Pre-requisites** 
 *  Start WSO2 Appication Server and add the attached **_AppServerServices_1.0.0.car_**. 
 *  Go to 'Manage' > 'Services' and verify whether EmissionTestService, InsuranceService, LicenseService and PaymentService deployed successfully
 *  Open the **_Service_Chaining.car_** file and change the backend server hostname and port in below files
    * EmissionTestServiceEp-1.0.0.xml
     *  InsuranceServiceEp-1.0.0.xml
     *  LicenseServiceEp-1.0.0.xml
     *  LicenseServiceProxyWSDL-1.0.0.xml
     *  PaymentServiceEp-1.0.0.xml
* Copy **_Service_Chaining.car_** file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Artifacts"_ directory
    

 **Execute the Scenario** -  Copy the script file to _"WSO2-SmokeTester/resources/testscripts/ESB/4.9.0/Scripts"_ location and run the script.

 
#### **Reference** -
1) http://wso2.com/library/articles/2014/02/service-orchestration-with-wso2-esb/
