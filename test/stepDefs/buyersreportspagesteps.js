const { Given, When, Then } = require("@cucumber/cucumber");
const { pauseBrowser } = require("../helpers/customcommands");
const { default: buyersReportsPage } = require("../pageobjects/buyers.reports.page");

Given(/^User navigates to the report configuration page for Preliminary Design summary report$/, function(){
    buyersReportsPage.navigateToPreliminaryDesignSummaryBuyer()
})

Given(/^User selects (.+) in the Service offering Drop down of the Configuration page for Preliminary Design summary report$/, function(svcOffering){
    buyersReportsPage.setServiceOfferingToViewReport(svcOffering);
})

When(/^User clicks recalculate button to generate a report$/, function(){
    buyersReportsPage.calcualteAndViewReport();
})

When(/^User clicks recalculate button to generate a pdf report$/, function(){
    buyersReportsPage.calculateAndViewPDFReport();
})

Then(/^A Preliminary design summary report is successfully generated for (.+)$/,function(svcOffering){
    buyersReportsPage.validateReportViewer(svcOffering);
})

When(/^User clicks on Flooring Quote Calculator Breakdown Link in the Buyer's Report list page$/, function(){
    buyersReportsPage.getFlooringQuoteCalculator();
})

Then(/^A Flooring Calculator Breakdown Quote report is successfully generated$/, function(){
    buyersReportsPage.validateFlooringQuoteBreakDownReportIsDownloaded();
})

Given(/^User navigates to the report configuration page for the Job detail report$/, function(){
    buyersReportsPage.navigateToJobDetailsReport();
})

Given(/^User selects (.+) in the Service offering Drop down of the Configuration page for the Job detail report$/, function(svcOffering){
   
    //buyersReportsPage.setServiceOfferingToViewReport(svcOffering)
})

Then(/^A material and Labor breakdown report Cost Breakdown report is successfully generated for (.+)$/,function(svcOffering){
    buyersReportsPage.validateReportViewer(svcOffering)
})

Given(/^User navigates to the report configuration page for the Design Summary - Participant report$/, function(){
    buyersReportsPage.navigateToParticipantReport();
})

Then(/^A Design Summary - Participant report is successfully generated$/,function(){
    buyersReportsPage.validateReportViewer('Participant Report')
})

Given(/^User navigates to the report configuration page for Design Summary Buyer - Quote Report$/, function(){
    buyersReportsPage.navigateToBuyerDesignSummary();
})

Given(/^User selects (.+) in the Service offering Drop down of the Configuration page for Design Summary Buyer - Quote Report$/, function(svcOffering){
  //  buyersReportsPage.setServiceOfferingToViewReport(svcOffering);
})

Then(/^A Design Summary Buyer Quote Report for (.+) is successfully generated$/, function(svcOffering){
    buyersReportsPage.validateReportViewer();
})


