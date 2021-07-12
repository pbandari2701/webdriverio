import { Given, When, Then } from "@cucumber/cucumber";
import LoginPage from '../pageobjects/login.page'

Given(/^I am logged into HDS as a Administrator (.+)$/, function(username) {
    LoginPage.open();
    LoginPage.loginHDS(username);
});

When(/^I select an subscriber as (.+)$/, function(subsciber) {
    LoginPage.selectSubscriber(subsciber);
});

Given(/^I am logged into HDS as a designer (.+)$/, function(username) {
    LoginPage.open();
    LoginPage.loginHDS(username);
});
