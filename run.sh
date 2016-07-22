#!/bin/bash

source resources/configs/application.properties

function log() {
	RED='\033[0;31m' # Red Color
	BLUE='\033[0;34m' # Blue Color
	NC='\033[0m' # No Color
	
	if [ ! -d $LOG_PATH ]; then
		mkdir -p $LOG_PATH
	fi

        TIMESTAMP=`date +"%Y-%m-%d %T.%3N"`

        if [ $1 == "ERROR" ]; then
		echo -e "$TIMESTAMP [${RED}$1${NC}] $2" | tee -a $LOG_PATH/$LOG_NAME
        else
		echo -e "$TIMESTAMP [${BLUE}$1${NC}] $2" | tee -a $LOG_PATH/$LOG_NAME
        fi
}


function check_variables() {
	# Verify JMETER_HOME
	if [ "$JMETER_HOME" == "" ];then
		log "ERROR" "Please Set the JMETER_HOME property in application.properties"
		exit
	else
		log "INFO" "JMETER_HOME : $JMETER_HOME"
	fi

	log "INFO" "SCRIPT_LOCATION : $SCRIPT_LOCATION"
	log "INFO" "REPORT_LOCATION : $REPORT_LOCATION"
	log "INFO" "ARTEFACT LOCATION : $ARTEFACT_LOCATION" 
}

function clean_setup() {
	# Cleaning OLD Results and other content
	if [ "$CLEAN_TARGET" = true ]; then
    		log "INFO" "Cleaning the target directory"
    		rm -rf target
	fi
}

function setup_testruner() {

	log "INFO" "Setting up test environment"

	# Create all required directories
	mkdir -p $REPORT_LOCATION/
	mkdir -p $REPORT_LOCATION/runtime/artefacts
	mkdir -p $REPORT_LOCATION/runtime/scripts
	mkdir -p $REPORT_LOCATION/reports
	mkdir -p $REPORT_LOCATION/logs
	mkdir -p $REPORT_LOCATION/reports/jtl
	mkdir -p $REPORT_LOCATION/reports/html
	mkdir -p $REPORT_LOCATION/javaclasses

	# Copy the report templates to target directory
	cp -R resources/template/report/* $REPORT_LOCATION/reports/html/

	# Compiling the report generator class
	javac -d $REPORT_LOCATION/javaclasses resources/clients/HTMLReportGenerator.java
}

function generate_report() {
	log "INFO" "Generating reports..."
	java -cp $REPORT_LOCATION/javaclasses HTMLReportGenerator $1 $2
}

function help_message() {
	echo "There is NO HELP for you..."
	exit
}

function copy_3rdparty_libs() {
	log "WARN" "The script will update your Jmeter instance!"
	if test "$(ls -A "$LIB_LOCATION")"; then
		log "INFO" "Copying 3rd party libraries into $JMETER_HOME/lib/ext"
                cp $LIB_LOCATION/* $JMETER_HOME/lib/ext/
	else
		log "INFO" "No 3rd party libraries found"
	fi
}

function get_jmx() {
	cp `find $ARTEFACT_LOCATION/$1/$2/ -iname "*jmx" -exec echo {} \;` $REPORT_LOCATION/runtime/scripts/
}

function get_artefacts() {
        cp `find $ARTEFACT_LOCATION/$1/$2/ -iname "*car" -exec echo {} \;` $REPORT_LOCATION/runtime/artefacts/
}

function run_tests() {
	log "INFO" "Starting Tests"

	# Running the Jmeter Scripts
	for x in $1/*.jmx; do
  		log "INFO" "Running the Script $x"
		sh $JMETER_HOME/bin/jmeter.sh -n -t $x -l $REPORT_LOCATION/reports/jtl/test.jtl
	done
	log "INFO" "Test run completed"
}

# Main function
while echo $1 | grep ^- > /dev/null; do
	eval $( echo $1 | sed 's/-//g' | tr -d '\012')=$2
	shift
	shift
done

if [ "$1" == "help" ];then
	help_message
fi

if [ "$1" == "clean" ];then
	log "INFO" "Cleaning the target directory"
	rm -rf target
	exit
fi

log "INFO" "Starting WSO2 Smoke Tester"
clean_setup
copy_3rdparty_libs

# Check environment variables
check_variables

log "INFO" "Checking arguments. For more information run ./run.sh help"

setup_testruner

PRODUCT=$p
VERSION=$v
SCRIPT=$s

if [ "$PRODUCT" == "" ] || [ "$VERSION" == "" ]; then
	log "INFO" "No product or version specified!"
	log "INFO" "Running default scripts in location [testscripts/scripts]"
	run_tests testscripts/scripts
	generate_report "NOT-SPECIFIED" "NOT-SPECIFIED"
fi

if [ "$PRODUCT" != "" ] && [ "$VERSION" != "" ] && [ "$SCRIPT" == "" ]; then
	log "INFO" "Running tests for $PRODUCT $VERSION"
	if [ -d "$ARTEFACT_LOCATION/$PRODUCT/$VERSION" ]; then
		log "INFO" "Artefacts found for testing"
		get_jmx $PRODUCT $VERSION
		get_artefacts $PRODUCT $VERSION
		sleep 5
		run_tests $REPORT_LOCATION/runtime/scripts
		generate_report $PRODUCT $VERSION
	else
		log "ERROR" "Could not find any artefacts for $PRODUCT $VERSION"
	fi

elif [ "$PRODUCT" != "" ] && [ "$VERSION" != "" ] && [ "$SCRIPT" != "" ]; then
	log "INFO" "Running $SCRIPT in $PRODUCT $VERSION"
	log "ERROR" "Individual script running is Not Suported in this version of WSO2 Smoke Tester"
fi

log "INFO" "WSO2 Smoke Tester tests completed, You can find the Test Report at target/reports/html"
