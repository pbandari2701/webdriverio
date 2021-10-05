import { selectByTxt, waitAndClick, waitForFileToDownload, waitUntilElementIsDisplayed } from "../helpers/customcommands";

const { default: BasePage } = require("./base.page");
const FLOORING_QUOTE_FILE_NAME = 'CalculatorBreakdown(Job_159332).xlsx'

class ReportsPage extends BasePage{

    get PreliminaryDesignSummaryBuyer() { return $('#_ctl0__ctl0_body_body_hypDesignBuyerSummary')}
    get ddlServiceOffering()            { return $('#ddlServiceOffering')}
    get recalcualteReportValue()        { return $('//a[text()=" Recalculate"]')}
    get recalculatePDF()                { return $('#_ctl0_body_cmdRecalculatePDF')}
    get pdfCreated()                    { return $('.view-embedded-pdf')}
    get flooringQuoteCalculator()       { return $('#_ctl0__ctl0_body_body_hypCalculatorBreakdown')}
    get jobDetailedReport()             { return $('#_ctl0__ctl0_body_body_hypJobReport')}
    get participantReport()             { return $('//a[text()="Design Summary - Participant"]')}
    get buyerDesignSummary()            { return $('#_ctl0__ctl0_body_body_hypDesignBuyerSummaryqd')}

    navigateToPreliminaryDesignSummaryBuyer(){
        waitAndClick(this.PreliminaryDesignSummaryBuyer, "Design Buyer Summary Report")
    }

    setServiceOfferingToViewReport(svcOffering){
        selectByTxt(this.ddlServiceOffering,svcOffering,svcOffering);
    }

    calcualteAndViewReport(){
        waitAndClick(this.recalcualteReportValue,"Recalcualte");
    }

    calculateAndViewPDFReport(){
        waitAndClick(this.recalculatePDF,"Recalcualte PDF Report")
    }

    validateReportViewer(svcOffering){
        waitUntilElementIsDisplayed(this.pdfCreated,"Preliminary design summary report for offering "+svcOffering)
    }

    getFlooringQuoteCalculator(){
        waitAndClick(this.flooringQuoteCalculator,"Flooring Quote Calculator Breakdown")
    }

    validateFlooringQuoteBreakDownReportIsDownloaded(){
        waitForFileToDownload(FLOORING_QUOTE_FILE_NAME);
    }

    navigateToJobDetailsReport(){
        waitAndClick(this.jobDetailedReport,"Job Details Report")
    }

    navigateToParticipantReport(){
        waitAndClick(this.participantReport,"Design Summary Participant")
    }

    navigateToBuyerDesignSummary(){
        waitAndClick(this.buyerDesignSummary,"Design Summary - Buyer")
    }


}

export default new ReportsPage();