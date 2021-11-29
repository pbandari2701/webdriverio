const { When, Then } = require("@cucumber/cucumber");
const { default: manageusersPage } = require("../pageobjects/manageusers.page");

When(/^the New button is clicked in the Manage Users list page$/, function(){
    manageusersPage.clickNewUser();
})

Then(/^the User editor page is loaded$/, async function(){
    manageusersPage.validateUserEditorPageIsloaded();
})

When(/^the New ERP Linked button is clicked in the Manage Users list page$/, function(){
    manageusersPage.clickNewERPLink();
})

Then(/^The ERP Designer Search modal is displayed$/, function(){
    manageusersPage.validateERPsrcpopup();
})

When(/^the Open button is clicked for the first user listed in the Manage users list page$/, function(){
    manageusersPage.clickFirstRecordFromManageUsers();
})