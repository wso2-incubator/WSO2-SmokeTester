# QA Tooling - Smoke Tester

A Jmeter Script based testing client. This tool is a Jmeter test wrapper and it will run multiple Jmeter files and generate reports out from them. 

# System Requirements

- Need Java 1.7 or above.
- Need Jmeter installed in your system

# How to Add Test Scripts

Please Refer the wiki section for instructions on adding new Jmeter based tests.

# How to Run

- Clone the Client
- Configure the required application properties in resources/configs/application.properties e.g: Set the Jmeter Home variable etc.
- Set test related properties in resources/configs/server.properties
- Execute the Script. 

##### Running With properties
 You can parse Product name and product version properties when executing the script
```sh
 ./run.sh -p [PRODUCT NAME] -v [PRODUCT VERSION]
	eg: ./run.sh -p ESB -v 4.9.0
``` 
Above will execute all the scripts which are located in test-suites/ESB/4.9.0 

To run a single script:
Find scripts through
```sh
 ./run.sh list [PRODUCT NAME] [PRODUCT VERSION]
	eg: ./run list ESB 4.9.0
```
running a single script
```sh
 ./run.sh -p [PRODUCT NAME] -v [PRODUCT VERSION] -s [SCRIPT NAME]
        eg: ./run.sh -p ESB -v 4.9.0 -s Address_Endpoint
```

##### Running Without properties
 If you execute the script without parsing any parameters as shown below. It will execute all the scrits included in the testscripts/scripts directory.
```sh
 ./run.sh
``` 

# How to view and analyze Results

Following logs and reports will be Created after executing the tool.

- Application Logs 
- Test Result Logs
- Jmeter Logs
- HTML Report

# Tested Environments

The tool was tested in the following environments. If there are any issues regarding the tool please report them in https://github.com/wso2-incubator/qa-tooling-smoketester/issues

- Ubuntu
- Fedora