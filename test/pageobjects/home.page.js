import { clearTextBox, expectToBeDisabled, expectToBeDisplayed, expectToBeEnabled, expectToBePresent, expectToHaveTitle, getAttributeValue, getTextOfElement, pauseBrowser, reloadPage, sendKeys, sendTab, waitAndClick, waitForDisplay,waitUntilElementIsClickable,waitUntilElementIsDisplayed, waitUntilElementIsEnabled } from "../helpers/customcommands";
import { default as BasePage } from "./base.page";
const allureReporter = require('@wdio/allure-reporter').default
const assert         = require('assert')


class HomePage extends BasePage{

 get productList()      { return $('=Products List') }
 get openProduct()      { return $('#_ctl0_body_grdData__ctl3_hypOpen') }
 get signOutOfHDS()     { return $('=Sign Out')}
 get detailsTab()       { return $('#tabdetails')}
 get productTypeDD()    { return $$('//div/strong[contains(text(),"Flooring Product Type:")]/../following-sibling::div[1]/select')}
 get productTypeDD1()   { return $('#TempID_1 > div.row.product-tab-details-upper > div:nth-child(1) > div:nth-child(1) > div.col-md-6 > select')}
 get makeUnsitedbtn()   { return $('=Make Unsuited')}
 get floorGroupDD1()    { return $('#TempID_1 > div.row.product-tab-details-upper > div:nth-child(1) > div:nth-child(11) > div.col-md-9 > select')}
 get floorGroupDD()     { return $$('//div/strong[contains(text(),"Floor Group:")]/../following-sibling::div[1]/select')}
 get floorGroupDDval()  { return $('//tbody/tr[1]/td[7]/select/option[10]')}
 get miscMaterialtxt()  { return $('//*[@id="TempID_1"]/div[3]/div[1]/div[5]/div[2]/div[1]/input[1]')}
 get miscMaterialtxt2() { return $('//*[@id="TempID_1"]/div[3]/div[1]/div[5]/div[2]/div[1]/input[2]')}
 get redAlert()         { return $('//strong[text()="YOU HAVE UNSAVED CHANGES!"]')}
 get saveChanges()              { return $('#koSave')}
 get saveConfirmation()         { return $('//span[text()="Products Have Been Saved."]')}
 get groupChangedMessage()      {  return $('//*[@id="top-nav"]/div[2]/span[text()="The changes that you made caused the total cost to not align with the current Group selected, please confirm the assigned Group."]')}
 get productGroupPriceAlert()   { return $('//div[text()="Total Cost does not align with the currently selected Group."]')}
 get homeDashboardText()        { return $('//span[text()="Dashboard"]')}    
 get buyersListPage()           { return $('//a[text()="Buyers"]')}
 get managerUsers()             { return $('=Manage Users')}
 get areaTypes()                { return $("//a[text()='Area Types']")}

 getFloorGroupVal(groupVal) {
    return $('//div/strong[contains(text(),"Floor Group:")]/../following-sibling::div[1]/select//option[@value='+groupVal+']')
 }

 navigateToProductListPage(){
     waitAndClick(this.productList, "Product List");
     waitAndClick(this.openProduct, "Product")
 }

    validateHDSHomePageIsDisplayed(){
        expectToBeDisplayed(this.homeDashboardText, "Home Dashboard");
}

 getManageUsers(){
     waitAndClick(this.managerUsers, 'Manage Users Link')
 }

 validateProductDetails(subsciber){
   
    waitAndClick(this.detailsTab, "Details");

    if(subsciber.includes("Meritage"))
    {
    waitUntilElementIsEnabled(this.productTypeDD1 , 'Product Type Drop Down');
    //expectToBeEnabled(this.productTypeDD1,'Product Type Drop Down');
    expectToBePresent(this.makeUnsitedbtn, 'make unsuite button');
    expectToBeDisabled(this.floorGroupDD1, 'Floor Group Drop Down')
    pauseBrowser(5000)
    const gvalOld  = getTextOfElement(this.getFloorGroupVal(this.floorGroupDD1.getValue()));
    allureReporter.addStep('Floor group value is '+gvalOld,'passed');

    this.setMiscMaterialTxt('10', 'Misc Material');
    pauseBrowser(2000)

    const gvalNew  = getTextOfElement(this.getFloorGroupVal(this.floorGroupDD1.getValue()));
    allureReporter.addStep('Floor group value after setting misc material text is '+gvalNew, 'passed');
    expectToBePresent(this.redAlert,"YOU HAVE UNSAVED CHANGES! - ALERT");

    this.saveChangeAndConfirm();

    waitAndClick(this.signOutOfHDS);

    }else{
    expectToBeDisabled(this.floorGroupDD1); // this should be enabled 
    pauseBrowser(5000);
    const groupval  = getTextOfElement(this.getFloorGroupVal(this.floorGroupDD1.getValue()));
    allureReporter.addStep('Floor group value is '+groupval, 'passed');

    this.setMiscMaterialTxt('10', 'Misc Material');

    const groupval1  = getTextOfElement(this.getFloorGroupVal(this.floorGroupDD1.getValue()));
    allureReporter.addStep('Floor group after entering Misc Material is '+groupval, 'passed');
    assert.strictEqual(groupval,groupval1,"Floor group value did not change");

    expectToBePresent(this.redAlert,"ALERT - YOU HAVE UNSAVED CHANGES!");
    expectToBePresent(this.groupChangedMessage, "ALERT - The changes that you made caused the total cost to not align with the current Group selected, please confirm the assigned Group.");    
    expectToBePresent(this.productGroupPriceAlert,"ALERT - Total Cost does not align with the currently selected Group.");
  
    this.saveChangeAndConfirm();

    waitAndClick(this.signOutOfHDS); 
}
    //waitAndClick(this.signOutOfHDS);
}

setMiscMaterialTxt(value, txtLabel){
    clearTextBox(this.miscMaterialtxt);
    sendKeys(this.miscMaterialtxt,value,txtLabel);
    sendTab(this.miscMaterialtxt2);
}

saveChangeAndConfirm(){
    //expectToBeEnabled(this.saveConfirmation,"");
    waitAndClick(this.saveChanges, "Save Changes Button");
    waitUntilElementIsDisplayed(this.saveConfirmation);
}

navigateToBuyerList(){
    waitAndClick(this.buyersListPage, "Buyers");
}
clcikingOnAreaTypesInSiteAdmin(){
    waitAndClick(this.areaTypes, "Area Types");
}

}

export default new HomePage();