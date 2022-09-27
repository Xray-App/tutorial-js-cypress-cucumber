#!/bin/bash

BASE_URL=https://xray.cloud.getxray.app
FILE=cucumber-report.json
token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" "$BASE_URL/api/v1/authenticate"| tr -d '"')
curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @"$FILE" "$BASE_URL/api/v1/import/execution/cucumber"

