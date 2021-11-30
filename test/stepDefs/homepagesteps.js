import { Given, When, Then } from "@cucumber/cucumber";
import { pauseBrowser, expectToHaveTitle } from "../helpers/customcommands";
import homePage from "../pageobjects/home.page";
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
When(/^the New button is clicked in the site-level Area Type page$/, function(){
    HomePage.clickingONNewButtonInAreaType();
})
Then(/^the modal for creating new Area type is displayed in the site-level Area Type page$/, function(){
    HomePage.validateAddDefaultAreaPopUpIsDisplayed();
})
When(/^the Edit button is clicked for a randomly selected AreaType in the site-level Area Type page$/, function(){
    HomePage.clckingOnEditButtonINAreaType();
})
Then(/^the Area Type editor Modal is displayed in the site-level Area Type page$/, function(){
    HomePage.valiadteEditDefaultAreaPopUpIsDisplayed();
})
When(/^the Disable button is clicked for a randomly selected AreaType in the site-level Area Type page$/, function(){
    HomePage.clickingOnDisableButtonInAreaTypes();
})
Then(/^the modal for disabling an Area type is displayed in the site-level Area Type page$/, function(){
    HomePage.validateDisableDefaultAreaPopUpIsDisplayed();
    })
When(/^the Delete button is clicked for a randomly selected AreaType in the site-level Area Type page$/, function(){
    HomePage.clickingOnDeleteButtonAreaTypes();
    })
Then(/^the modal for deleting an Area type is displayed in the site-level Area Type page$/, function(){
    HomePage.validateDeleteDefaultArea();
})
When(/^Assign Take Offs page link under Site Administration Menu is clicked$/, function(){
    HomePage.clickingOnAssignTakeOffs();
})
Then(/^Assign Take Offs page is loaded$/, async function(){
    expectToHaveTitle('Assign Take Offs - HDS');
})
When(/^the Missing Quantities Report link in the Site Admin menu is clicked$/, function(){ 
    HomePage.clickingOnMissingQuantitiesReport();
})    
Then(/^the Report Viewer page loaded$/, async function() {
    expectToHaveTitle('Report Viewer - HDS');
})
When(/^the Edit button is clicked for a randomly selected Takeoff in the site-level Assign Take Offs list page$/, function(){
    HomePage.clickingOnEditButtonInAssignTakeOffs();
})
Then(/^the take Off editor Modal is displayed in the site-level Assign Take Offs list page$/, function(){
    HomePage.validateTakeOffEditorModalIsDisplayed();
})


