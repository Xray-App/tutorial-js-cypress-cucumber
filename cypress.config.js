const { defineConfig } = require('cypress')
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const createEsbuildPlugin = require('@badeball/cypress-cucumber-preprocessor/esbuild').createEsbuildPlugin;
const addCucumberPreprocessorPlugin = require('@badeball/cypress-cucumber-preprocessor').addCucumberPreprocessorPlugin;

async function setupNodeEvents(on, config) {
  await addCucumberPreprocessorPlugin(on, config);
	
  on(
    "file:preprocessor", 
    	 createBundler({
     	 plugins: [createEsbuildPlugin(config)],
    	})
    
  );

  // Make sure to return the config object as it might have been modified by the plugin.
  return config;
}

module.exports = defineConfig({
  e2e: {
    baseUrl: "https://robotwebdemo.herokuapp.com/",
    specPattern: "**/*.feature",
    excludeSpecPattern: [
      "*.js",
      "*.md"
    ],
  //stepDefinitions: 'support/step_definitions/**.js',
/*
    reporter: "junit",
    reporterOptions: {
      "mochaFile": "test-results/test-output-[hash].xml"
    }
*/
    chromeWebSecurity: false,
    projectId: "bfi83g",
    supportFile: false,
    setupNodeEvents
  }

})
