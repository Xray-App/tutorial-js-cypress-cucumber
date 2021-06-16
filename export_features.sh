#!/bin/bash

KEYS="CALC-7905;CALC-7906"

rm -f features.zip
curl -u admin:admin  "http://192.168.56.102/rest/raven/1.0/export/test?keys=$keys&fz=true" -o features.zip
unzip -o features.zip  -d features
