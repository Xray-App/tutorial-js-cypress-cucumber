# Tutorial with Cypress tests, in JavaScript, using Cucumber, integrated with Xray

[![build workflow](https://github.com/Xray-App/tutorial-js-cypress-cucumber/actions/workflows/main-cloud.yml/badge.svg)](https://github.com/Xray-App/tutorial-js-cypress-cucumber/actions/workflows/main-cloud.yml)
[![license](https://img.shields.io/badge/License-BSD%203--Clause-green.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![Gitter chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/Xray-App/community)

## Overview

Code that supports the tutorial [Testing using Cypress and Cucumber in JavaScript](https://docs.getxray.app/display/XRAYCLOUD/Testing+using+Cypress+and+Cucumber+in+JavaScript) showcasing the integration between [Xray Test Management](https://www.getxray.app/) on Jira and Cypress.

The test automation code implements some UI tests for doing authentication, targeting a dummy website having a login page. It uses two stories (i.e. login and logout) as the features we aim to deliver.

## Prerequisites

In order to run this tutorial, you need to have Cypress and Node.js.
Dependencies can be installed using:

```bash
npm install
```

## Running

The straighforward approach to run everything in a single shot is to invoke the auxiliary script [run_all_cloud_standard_workflow.sh](run_all_cloud_standard_workflow.sh).
You need to update the client_id and client_secret to interact with your Xray cloud instance (obtainable from Xray API Keys section); you also need to update the issue keys of the corresponding stories in Jira, that you'll use as basis to generate the .feature file(s).

Remember that to be able to run the scenarios, we need to have the corresponding .feature files. The previous script assumes you are using Xray to manage the specification of the scenarios, so you need to extract them from Jira (more on the possible workflows [here](https://docs.getxray.app/pages/viewpage.action?pageId=31622264)).

When you have the .feature files, containing the Feature along with the Scenario properly tagged, you can finally run the tests using the `cypress` tool (directly or through npm).

```bash
npx cypress run --spec 'features/**/*.feature'
```

or simply

```bash
npm test
```

Tests can also run inside a Docker container; local directory/file should be mounted so that Cucumber results are stored locally.

```bash
docker build . -t cypress_cucumber_tests
docker run --rm -v $(pwd)/cucumber-report.json:/source/cucumber-report.json -t cypress_cucumber_tests
```

The processing of Gherkin .feature files is possible using [cypress-cucumber-preprocessor](https://github.com/badeball/cypress-cucumber-preprocessor), which can generate Cucumber JSON reports.
Cypress can take screenshots and these will become available in the Cucumber JSON reports automatically, and can be later seen in Xray.

## Submitting results to Jira

Results can be submitted to Jira so that they can be shared with the team and their impacts be easily analysed.
This can be achieved using [Xray Test Management](https://www.getxray.app/) as shown in further detail in this [tutorial](https://docs.getxray.app/pages/viewpage.action?pageId=76982913).
This repo contains an auxiliary script [import_results_cloud.sh](import_results_cloud.sh) that does that; it uses a configuration file to have Xray's client_id and client_secret.
You can also have a look at the [workflows implemented in this repo](.github/workflows) using GitHub Actions.


## Auxiliary scripts

This repo also contains some auxiliary shell scripts, provided as an example; feel free to download and customize them to your needs.
You may find scripts for interacting both with Xray server/DC or Xray cloud, which have slightly different APIs.


## Contact

Any questions related with this code, please raise issues in this GitHub project. Feel free to contribute and submit PR's.
For Xray specific questions, please contact [Xray's support team](https://jira.getxray.app/servicedesk/customer/portal/2).

## References

- [Cypress](https://www.cypress.io/)
- [Possible workflows for implementing Cucumber](https://docs.getxray.app/pages/viewpage.action?pageId=31622264)
- [Detailed tutorial for Xray Cloud showcasing the integration with Jira Cloud](https://docs.getxray.app/display/XRAYCLOUD/Testing+using+Cypress+and+Cucumber+in+JavaScript)
- [Cypress GitHub Action documentation](https://docs.cypress.io/guides/continuous-integration/github-actions)
- [Cypress GitHub Action on the GH marketplace](https://github.com/marketplace/actions/cypress-io )


## LICENSE

[BSD 3-Clause](LICENSE)

