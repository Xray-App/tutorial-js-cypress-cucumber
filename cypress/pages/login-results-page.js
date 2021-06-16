const RESULT_HEADER = 'h1';

class LoginResultsPage {
    static expect() {
      return {
        toBeSuccessful: () => {
          cy.get(RESULT_HEADER).should('have.text', 'Welcome Page')
        },

        toBeUnsuccessful: () => {
          cy.get(RESULT_HEADER).should('have.text', 'Error Page')
        },
      };
    }
  }
  
  export default LoginResultsPage;