const { expect } = require("chai");

describe('Sample Test', () => {
    it('visit google', () => {
        cy.visit('https://www.google.com')
    })    
    it('should have input field', () => {
        cy.get('input').should('be.visible')
    })
});