#!/bin/bash

JIRA_BASEURL=http://192.168.56.102
JIRA_USERNAME=admin
JIRA_PASSWORD=admin
KEYS="CALC-7905;CALC-7906"

rm -f features.zip
curl -u $JIRA_USERNAME:$JIRA_PASSWORD  "$JIRA_BASEURL/rest/raven/2.0/export/test?keys=$KEYS&fz=true" -o features.zip
unzip -o features.zip  -d features
