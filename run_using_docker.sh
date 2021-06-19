#!/bin/bash

docker build . -t cypress_cucumber_tests

docker run --rm -v $(pwd)/merged-test-results.json:/source/merged-test-results.json -t cypress_cucumber_tests
