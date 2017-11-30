#!/bin/bash

echo "This script with emtpy the contents of the given Splunk index. In order to do this Splunk must be restarted."

read -r -p "Enter the name of the index you want to empty [ENTER]: " index
echo " "

/opt/splunk/bin/splunk stop
/opt/splunk/bin/splunk clean eventdata -index $index
/opt/splunk/bin/splunk start
