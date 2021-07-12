import { Given, When, Then } from "@cucumber/cucumber";
import HomePage from '../pageobjects/home.page'

Then(/^The appropriate settings pertaining to the (.+) should be validated$/, function(subscriber){
    console.log("subscriber is"+subscriber)
    HomePage.navigateToProductListPage()
    HomePage.validateProductDetails(subscriber)
});