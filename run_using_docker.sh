#!/bin/bash

docker build . -t cypress_cucumber_tests

docker run --rm -v $(pwd)/report.json:/source/report.json -t cypress_cucumber_tests
