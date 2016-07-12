# WSO2ESB-SmokeTester

A Jmeter Script base testing client. This tool is a Jmeter test wrapper and it will run multiple Jmeter files and generate reports out from them. 

# System Requirements

- Need Java 1.7 or above.
- Need Jmeter installed in your system

# How to Add Test Scripts

Please Refer the wiki section for instructions on adding new Jmeter based tests.

# How to Run

- Clone the Client
- Configure the required properties in resources/configs/application.properties
- Execute the Script. e.g: ./run.sh -p [PRODUCT NAME] -v [PRODUCT VERSION]
	eg: ./run.sh -p ESB -v 4.9.0
