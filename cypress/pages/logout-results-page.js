const RESULT_HEADER = 'h1';

class LogoutResultsPage {
    static expect() {
      return {
        toBeSuccessful: () => {
          cy.get(RESULT_HEADER).should('have.text', 'Login Page')
        },
      };
    }
  }
  
  export default LogoutResultsPage;