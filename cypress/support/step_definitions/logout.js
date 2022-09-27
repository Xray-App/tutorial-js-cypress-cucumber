import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

import WelcomePage from '../../pages/welcome-page';
import LogoutResultsPage from '../../pages/logout-results-page';

Given(/^user is on the welcome page$/, () => {
  WelcomePage.visit();
});

When('user chooses to logout', () => {
  WelcomePage.pressLogout();
});

Then(/^login page should be open$/, () => {
    LogoutResultsPage.expect().toBeSuccessful();
  });
