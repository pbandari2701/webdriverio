import { Given, When, Then } from "@cucumber/cucumber";
import HomePage from '../pageobjects/home.page'

Then(/^The appropriate settings pertaining to the (.+) should be validated$/, function(subscriber){
    console.log("subscriber is"+subscriber)
    HomePage.navigateToProductListPage()
    HomePage.validateProductDetails(subscriber)
});

Given(/^HDS Home page is displayed$/, function(){
    HomePage.validateHDSHomePageIsDisplayed();
})

When(/^Manage User link under Security Menu is clicked$/, function(){
    HomePage.getManageUsers();
})

Then(/^Manage Users page is loaded$/, async function(){   
    await expect(browser).toHaveTitle('	Manage Users - HDS')
})