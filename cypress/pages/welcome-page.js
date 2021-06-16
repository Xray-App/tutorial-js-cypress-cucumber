import LoginPage from './login-page';

const LOGOUT_LINK = 'a';
const LOGOUT_TEXT = 'logout';


class WelcomePage {
  static visit() {
    cy.visit('/welcome.html');
  }


  static pressLogout() {
    cy.get(LOGOUT_LINK).contains(LOGOUT_TEXT)
      .click();
    return new LoginPage();
  }

}

export default WelcomePage;
