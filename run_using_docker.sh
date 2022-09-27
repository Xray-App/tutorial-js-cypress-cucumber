#!/bin/bash

docker build . -t cypress_cucumber_tests

docker run --rm -v $(pwd)/cucumber-report.json:/source/cucumber-report.json -t cypress_cucumber_tests
