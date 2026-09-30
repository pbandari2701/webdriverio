import { clearTextBox,switchToPreviousWindow,closeWindow, expectToBeDisabled,assertEquals,switchToNextWindowArray,expectToHaveUrlContaining, expectToBeDisplayed, expectNotToBeDisplayed,switchToNewWindow, expectToBePresent, expectToHaveTitle, getAttributeValue, getTextOfElement, pauseBrowser, reloadPage, sendKeys, sendTab, waitAndClick, waitForDisplay,waitUntilElementIsClickable,waitUntilElementIsDisabled,waitUntilElementIsDisplayed, waitUntilElementIsEnabled, acceptAlert, selectByTxt } from "../helpers/customcommands";
import { default as BasePage } from "./base.page";
const allureReporter = require('@wdio/allure-reporter').default
const assert         = require('assert')
const CATALOG_DATA_FILE_NAME = "catalog"


class commngmentpage extends BasePage{

get builderHDSNameDD()          { return $("//select[@id='cboBuilder']")} 
get communityNameTxtBox()       { return $("//input[@id='txtCommunityName']")}    
get contactSetupTab ()          { return $("//a[@id='tabcontactsetup']")}
get contactSelectDD ()          { return $("//select[@id='_ctl0_body_grdContacts__ctl2_cboContact']")}
get serviceOfferingTab()        { return $("//a[@id='tabserviceofferings']")}
get CWServiceOfferingDD ()      { return $("//select[contains(@id, 'ctl1_ddlServiceOfferingIsRequired')]")}
get customCalculatorCB ()       { return $("//li[2]//span[2]//input[1]")}
get LSOServiceOfferingDD ()     { return $("//select[contains(@id, 'ctl3_ddlServiceOfferingIsRequired')]")}
get saveBtn ()                  { return $("//button[contains(text(),'Save')]")}
get standardSetUp ()            { return $('//a[@href="/dm__standard_product_editor.aspx"]')}
get addProductBtn ()            { return $("//button[text()='Add Product']")}
get flooringCategoryDD ()       { return $('#cboFlooringCategories')}
get globalSearchButton ()       { return $('#search-button')}
get searchProductsCheckBox ()   { return $('//table[@id="search-results-table"]//input[@type="radio"]')}
get applyBtn ()                 { return $('#buttonApplySearch')}
get allColorsCheckBox ()        { return $("(//input[@type='checkbox'])[23]")}
get defaultRadioBtn ()          { return $("//input[@value='1593083']")}
get NSISellPrice ()             { return $("")}
get sellPrice ()                { return $("")}

setValueToBuilderHDS () { 
    selectByTxt( this.builderHDSNameDD, 'Taylor Morrison', "builder HDS Name DD");
}
setValueTocommunityNameTxtBox (){
    sendKeys(this.communityNameTxtBox, ".","community Name TxtBox");
}
setValueToContact() {
    waitAndClick( this.contactSetupTab, "contact Setup Tab");
    selectByTxt( this.contactSelectDD, 'Kristen Douglas', 'contact Select DD');
}
setValueToWallTileDD () {
    waitAndClick(this.serviceOfferingTab, "serviceOfferingTab");
    selectByTxt(this.CWServiceOfferingDD,"Required", "CW ServiceOffering DD");
    waitAndClick(this.customCalculatorCB, "custom Calculator Check box");
}
setValueToLSODD () {
    selectByTxt(this.LSOServiceOfferingDD, "Required", "LSO ServiceOffering DD");
    waitAndClick(this.saveBtn, "save Btn");
}
addingFlooringProductsAsStandard () {
    waitAndClick (this.standardSetUp, "standard SetUp Link");
    pauseBrowser(5000);
    waitAndClick(this.addProductBtn, "add Product Btn");
    selectByTxt(this.flooringCategoryDD, "Carpet", "flooring Category DD");
    waitAndClick(this.globalSearchButton, "search button");
    waitAndClick(this.searchProductsCheckBox, "search Products Check box");
    waitAndClick(this.applyBtn, "apply Btn");
    waitAndClick(this.allColorsCheckBox, "all colors check box");
    waitAndClick(this.defaultRadioBtn, "default Radio Button");
    selectByTxt(this.NSISellPrice, "", "NSISell Price");
    selectByTxt(this.sellPrice, "", "sell Price");
}
addingPadProductsAsStandard () {
    
}
getData(){ 
    return super.testDataJson(CATALOG_DATA_FILE_NAME);
    }


}
export default new commngmentpage();