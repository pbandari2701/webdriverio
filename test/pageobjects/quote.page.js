const { waitAndClick, waitUntilElementIsDisplayed, assertTextPresentOnElement } = require("../helpers/customcommands");
const { default: BasePage } = require("./base.page");

class QuotePage extends BasePage{
    get createQuoteBtn()    { return $('//input[@value="Create Quote"]')}
    get acceptCreateQuote() { return $('#answerYes')}
    get quoteCreatedMsg()   { return $('#umsg')}

    createQuote(){
        waitAndClick(this.createQuoteBtn,"Create Quote");
        waitAndClick(this.acceptCreateQuote,"Yes Create Quote")
    }

    validateQuoteIsCreated(svcOffering){
        waitUntilElementIsDisplayed(this.quoteCreatedMsg,"Create Quote")
        assertTextPresentOnElement(this.quoteCreatedMsg,"Quote has been successfully created for "+svcOffering)
    }

}

export default new QuotePage();