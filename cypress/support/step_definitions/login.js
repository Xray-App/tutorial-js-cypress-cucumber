import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import LoginPage from '../../pages/login-page';
import LoginResultsPage from '../../pages/login-results-page';

Given(/^browser is opened to login page$/, () => {
  LoginPage.visit();
});

When('user {string} logs in with password {string}', (username, password) => {
  LoginPage.enter_username(username);
  LoginPage.enter_password(password);
  LoginPage.pressLogin();
});

Then(/^welcome page should be open$/, () => {
    LoginResultsPage.expect().toBeSuccessful();
  });

Then(/^error page should be open$/, () => {
    LoginResultsPage.expect().toBeUnsuccessful();
  });
