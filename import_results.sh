#!/bin/bash

JIRA_BASEURL=http://192.168.56.10
JIRA_USERNAME=admin
JIRA_PASSWORD=admin
FILE=cucumber-report.json
curl -H "Content-Type: application/json" -X POST -u $JIRA_USERNAME:$JIRA_PASSWORD --data @"$FILE" $JIRA_BASEURL/rest/raven/2.0/import/execution/cucumber
