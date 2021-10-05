const { When, Then } = require("@cucumber/cucumber");
const { pauseBrowser, waitForFileToDownload } = require("../helpers/customcommands");
const { default: quotePage } = require("../pageobjects/quote.page");
const Flooring_Design_FileName = 'CalculatorBreakdown(Flooring Design_315150).xlsx';
const WallTile_FileName        = 'CalculatorBreakdownWall(Wall Tile Design_92895).xlsx'; 


When(/^The create quote button is clicked in the Buyer Report page$/,function(){
    quotePage.createQuote();
})

Then(/^A quote should be successfully created for (.+)$/, function(svcOffering){
    quotePage.validateQuoteIsCreated(svcOffering);
})

When(/^User Clicks on the Calculator Breakdown Report Link for (.+)$/, function(svcOffering){
    if(svcOffering == 'Flooring'){
        quotePage.downloadReport();
    }else{
        quotePage.downloadReportWallTile();
    }
})

Then(/^A Calculator breakdown report for the (.+) design scenario is successfully generated$/, function(svcOffering){
    if(svcOffering == 'Flooring'){
        console.log("IN FILE DOWNLOAD")
        waitForFileToDownload(Flooring_Design_FileName);
    }else{
        waitForFileToDownload(WallTile_FileName);
    }
})