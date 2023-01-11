import LoginResultsPage from './login-results-page';

const USERNAME_FIELD = 'input[id=username_field]';
const PASSWORD_FIELD = 'input[id=password_field]';
const LOGIN_BUTTON = 'input[type=submit]';
const LOGIN_TEXT = 'LOGIN';


class LoginPage {
  static visit() {
    cy.visit('https://robotwebdemo.onrender.com/');
  }


  static enter_username(username) {
    cy.get(USERNAME_FIELD)
      .type(username);
  }

  static enter_password(password) {
    cy.get(PASSWORD_FIELD)
      .type(password);
  }

  static pressLogin() {
    cy.get(LOGIN_BUTTON).contains(LOGIN_TEXT)
      .click();
    return new LoginResultsPage();
  }

}

export default LoginPage;
