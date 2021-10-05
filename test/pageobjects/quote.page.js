const { waitAndClick, waitUntilElementIsDisplayed, assertTextPresentOnElement } = require("../helpers/customcommands");
const { default: BasePage } = require("./base.page");

class QuotePage extends BasePage{
    get createQuoteBtn()            { return $('//input[@value="Create Quote"]')}
    get acceptCreateQuote()         { return $('#answerYes')}
    get quoteCreatedMsg()           { return $('#umsg')}
    get downloadBreakdownReport()   { return $('#_ctl0_body_hypDLExcel')}
    get downloadBreakdownReportWallTile() { return $('#_ctl0_body_btnCalculatorBreakdownReport')}

    createQuote(){
        waitAndClick(this.createQuoteBtn,"Create Quote");
        waitAndClick(this.acceptCreateQuote,"Yes Create Quote")
    }

    validateQuoteIsCreated(svcOffering){
        waitUntilElementIsDisplayed(this.quoteCreatedMsg,"Quote has been successfully created for "+svcOffering)
    }

    downloadReport(){
        waitAndClick(this.downloadBreakdownReport,"Download Break Down Report")
    }

    downloadReportWallTile(){
        waitAndClick(this.downloadBreakdownReportWallTile, "Download Breakdown report Wall Tile")
    }

}

export default new QuotePage();