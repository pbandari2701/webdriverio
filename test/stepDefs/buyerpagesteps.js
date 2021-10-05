const { Given } = require("@cucumber/cucumber");
const { default: buyersPage } = require("../pageobjects/buyers.page");
const { default: homePage } = require("../pageobjects/home.page");

Given(/^I am on Buyer list page$/, function(){
    homePage.navigateToBuyerList();
})

Given(/^A buyer with the following attributes is opened (.+) , (.+)$/, function(communityName, buyerName){
    buyersPage.searchBuyer(buyerName);
})

Given(/^User navigates to the buyer's scenario options selector Page for (.+) Service Offering$/, function( buyerName){
    buyersPage.openActiveBuyer();
})

Given(/^User navigates to the Buyer report page for (.+)$/,function(svcOffering){
    buyersPage.navigateToServiceOffering(svcOffering);
    if((svcOffering == 'Flooring') || (svcOffering == 'Wall Tile')){

        buyersPage.openSVCRecord();
    }    
})

Given(/^User Navigates to The Buyer's Report page$/, function(){
    buyersPage.openActiveBuyer();
    buyersPage.navigateToBuyersReportsPage();
})



