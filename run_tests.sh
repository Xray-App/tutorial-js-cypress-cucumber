#!/bin/bash

rm -f cypress/cucumber-json/*
# npm run test:local
npm run test
npm run attach_screenshots
node_modules/cucumber-json-merge/bin/cucumber-json-merge  -d cypress/cucumber-json/
