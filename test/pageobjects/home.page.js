import { clearTextBox, expectToBeDisabled, expectToBeDisplayed, expectToBeEnabled, expectToBePresent, expectToHaveTitle, getAttributeValue, getTextOfElement, pauseBrowser, reloadPage, sendKeys, sendTab, waitAndClick, waitForDisplay,waitUntilElementIsClickable,waitUntilElementIsDisabled,waitUntilElementIsDisplayed, waitUntilElementIsEnabled } from "../helpers/customcommands";
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
 get managerUsers()             { return $("//a[text()='Manage Users']")}
 get areaTypes()                { return $("//a[text()='Area Types']")}
 get newButton()                { return $("//a[@title='New']")}
 get addDefaultArea()           { return $("//h4[@class='modal-title']")}
 get editButton()               { return $('//a[@title="Edit"]')}
 get editDefaultArea()          { return $("//h4[text()='Edit Default Area']")}
 get disableButton()            { return $('//a[@title="Disable"]')}
 get disableDefaultArea()       { return $("//h4[text()='Disable Default Area']")}
 get deleteButton()             { return $('//a[@title="Delete"]')}
 get deleteDefaultArea()        { return $("//h4[text()='Delete Area Type']")}
 get assignTakeOffs()           { return $("//a[text()='Assign Take Offs']")}                      
 get missingQuantitiesReport()  { return $("//a[text()='Missing Quantities Report']")}
 get editTakeOff()              { return $("//h4[text()='Edit Take Off']")}                  
 get LoadingGif()               { return $("//h3[text()='Loading...']")}
 get disableTakeOff()           { return $("//h4[text()='Disable Take Off']")}
 get addTakeOffButton()         { return $('//a[text()=" Add Take Off"]')}
 get addTakeOffPopUp ()         { return $('//h4[text()="Add Take Off"]')}
 get patterns()                 { return $("//a[text()='Patterns']")}
 get newPattern ()              { return $("//button[text()=' New Pattern']")}
 get addPatternPopUp ()         { return $ ("//h4[text()='Add Pattern']")}
 get taggingProductCategories() { return $("//a[text()='Tagging Product Categories']")}

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
    waitUntilElementIsDisabled(this.LoadingGif);
}
clickingONNewButtonInAreaType(){ 
    waitAndClick(this.newButton, 'new Button in AreaTypes');
    pauseBrowser(5000);
}
validateAddDefaultAreaPopUpIsDisplayed(){
    expectToBeDisplayed(this.addDefaultArea, "Add Default Area pop up");
}
clckingOnEditButtonINAreaType(){
    waitAndClick(this.editButton, 'Edit Button in Area Types');
    pauseBrowser(5000);
}
valiadteEditDefaultAreaPopUpIsDisplayed(){ 
    expectToBeDisplayed(this.editDefaultArea, "Edit Default Area pop up");
}
clickingOnDisableButtonInAreaTypes(){
    waitAndClick(this.disableButton, 'Disable button Area Types');
    pauseBrowser(5000);
}
validateDisableDefaultAreaPopUpIsDisplayed(){ 
    expectToBeDisplayed(this.disableDefaultArea, "Disable Default Area pop up");
}
clickingOnDeleteButtonAreaTypes(){
    waitAndClick(this.deleteButton,  'Delete button Area Types');
}
validateDeleteDefaultArea(){ 
    expectToBeDisplayed(this.deleteDefaultArea, "Delete Default Area pop up");
 }
 clickingOnAssignTakeOffs() {
     waitAndClick(this.assignTakeOffs, "Assign Take Offs");
     waitUntilElementIsDisabled(this.LoadingGif);

 }
 clickingOnMissingQuantitiesReport(){
     waitAndClick(this.missingQuantitiesReport, "Missing Quantities Report");
 } 
 clickingOnEditButtonInAssignTakeOffs(){
     waitAndClick(this.editButton, "Edit button");
 } 
 validateTakeOffEditorModalIsDisplayed() {
     expectToBeDisplayed(this.editTakeOff, "Edit take off pop up");
 }   
clickingOnDisableButtonAssignTakeOffs(){
    waitAndClick(this.disableButton, "Disable button");
}
validateDisableTakeOffPopUpIsDisplayed(){
    expectToBeDisplayed(this.disableTakeOff, "Disable take off pop up");
}
clickingOnAddTakeOffButtonInareaType() {
    waitAndClick(this.addTakeOffButton, "Add take off button");
}
validateAddTakeOffPopUpIsDisplayed(){
    expectToBeDisplayed(this.addTakeOffPopUp, "Add take off pop up");
}
clickingOnPatterns (){
    waitAndClick(this.patterns, "Patterns");
    waitUntilElementIsDisabled(this.LoadingGif);

}
clickingOnNewPatternButtonInPatterns() { 
    waitAndClick(this.newPattern, "New pattern button");
}
validateAddPatternPopUpIsDisplayed(){
    expectToBeDisplayed(this.addPatternPopUp, "Add pattern pop up");
}
clickingOnTaggingProductCategories(){ 
}
}
export default new HomePage();