#!/bin/bash

JIRA_BASEURL=http://192.168.56.10
JIRA_USERNAME=admin
JIRA_PASSWORD=admin

curl -H "Content-Type: application/json" -X POST -u $JIRA_USERNAME:$JIRA_PASSWORD --data @"merged-test-results.json" $JIRA_BASEURL/rest/raven/2.0/import/execution/cucumber
