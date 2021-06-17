#!/bin/bash

JIRA_BASEURL=https://192.168.56.102
JIRA_USERNAME=admin
JIRA_PASSWORD=admin
PROJECT=CALC
FILE="features.zip"


zip -r $FILE cypress/integration/ -i \*.feature
curl -H "Content-Type: multipart/form-data" -u $JIRA_USERNAME:$JIRA_PASSWORD -F "file=@$FILE" "$JIRA_BASEURL/rest/raven/1.0/import/feature?projectKey=$PROJECT"
