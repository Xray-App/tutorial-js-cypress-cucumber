#!/bin/bash

FILE="features.zip"
PROJECT=CALC
JIRA_BASEURL=https://192.168.56.102
JIRA_USERNAME=admin
JIRA_PASSWORD=admin


zip -r $FILE cypress/integration/ -i \*.feature
#curl -H "Content-Type: multipart/form-data" -u admin:admin -F "file=@features.zip" "http://192.168.56.102/rest/raven/1.0/import/feature?projectKey=CALC"
curl -H "Content-Type: multipart/form-data" -u $JIRA_USERNAME:$JIRA_PASSWORD -F "file=@$FILE" "$JIRA_BASEURL/rest/raven/1.0/import/feature?projectKey=$PROJECT"
