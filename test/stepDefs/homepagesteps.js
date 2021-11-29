import { Given, When, Then } from "@cucumber/cucumber";
import { pauseBrowser, expectToHaveTitle } from "../helpers/customcommands";
import HomePage from '../pageobjects/home.page'
const allureReporter = require('@wdio/allure-reporter').default


Then(/^The appropriate settings pertaining to the (.+) should be validated$/, function(subscriber){
    console.log("subscriber is"+subscriber)
    HomePage.navigateToProductListPage()
    HomePage.validateProductDetails(subscriber)
});

Given(/^HDS Home page is displayed$/,  function(){
    HomePage.validateHDSHomePageIsDisplayed();
})

When(/^Manage User link under Security Menu is clicked$/, function(){
    HomePage.getManageUsers();
})

Then(/^Manage Users page is loaded$/, async function(){   
    expectToHaveTitle('Manage Users - HDS')
})
When(/^Area Types link under Site Administration Menu is clicked$/, function(){
    HomePage.clcikingOnAreaTypesInSiteAdmin();
})
Then(/^Area Typespage is loaded$/, async function(){
    expectToHaveTitle('Area Types - HDS');
})