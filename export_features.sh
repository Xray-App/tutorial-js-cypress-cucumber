#!/bin/bash

JIRA_BASEURL=http://192.168.56.10
JIRA_USERNAME=admin
JIRA_PASSWORD=admin
KEYS="CALC-7905;CALC-7906"

rm -f features.zip
curl -u $JIRA_USERNAME:$JIRA_PASSWORD  "$JIRA_BASEURL/rest/raven/2.0/export/test?keys=$keys&fz=true" -o features.zip
unzip -o features.zip  -d features
