const { When, Then } = require("@cucumber/cucumber");
const { default: quotePage } = require("../pageobjects/quote.page");


When(/^The create quote button is clicked in the Buyer Report page$/,function(){
    quotePage.createQuote();
})

Then(/^A quote should be successfully created for (.+)$/, function(svcOffering){
    quotePage.validateQuoteIsCreated(svcOffering);
})