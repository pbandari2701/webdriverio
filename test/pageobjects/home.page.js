import { clearTextBox, expectToBeDisabled, expectToBeDisplayed, expectNotToBeDisplayed, expectToBePresent, expectToHaveTitle, getAttributeValue, getTextOfElement, pauseBrowser, reloadPage, sendKeys, sendTab, waitAndClick, waitForDisplay,waitUntilElementIsClickable,waitUntilElementIsDisabled,waitUntilElementIsDisplayed, waitUntilElementIsEnabled } from "../helpers/customcommands";
import { default as BasePage } from "./base.page";
const allureReporter = require('@wdio/allure-reporter').default
const assert         = require('assert')
const CATALOG_DATA_FILE_NAME = "catalog";


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
 get LoadingGif()               { return $("//h3[contains(text(),'Loading')]")}
 get disableTakeOff()           { return $("//h4[text()='Disable Take Off']")}
 get addTakeOffButton()         { return $('//a[text()=" Add Take Off"]')}
 get addTakeOffPopUp ()         { return $('//h4[text()="Add Take Off"]')}
 get patterns()                 { return $("//a[text()='Patterns']")}
 get newPattern ()              { return $("//button[text()=' New Pattern']")}
 get addPatternPopUp ()         { return $ ("//h4[text()='Add Pattern']")}
 get taggingProductCategories() { return $("//a[text()='Tagging Product Categories']")}
 get buyerTypes ()              { return $("//a[text()='Buyer Types']")}
 get newButton2 ()              { return $("//a[text()=' New']")}
 get openButton ()              { return $('//a[@class="btn btn-info btn-xs"]')}
 get categoryServiceOffering()  { return $("//a[text()='Category Service Offering']")}
 get subscriberSettings ()      { return $("//a[text()='Subscriber Settings']")}
 get companySetupPage()         { return $("//th[text()='Company Information:']")}
 get globalSettingsPage()       { return $("//th[text()='Product Settings:']")}
 get reportSetUpPage()          { return $("//th[text()='Report Setup - Default Disclosure Statements:']")}
 get featuresPage()             { return $("//th[text()='Extras']")}
 get erpPage()                  { return $("//th[text()='Integration']")}
 get patternAvailability()      { return $("//a[text()='Pattern Availability']")}
 get flooringGroups()           { return $("//a[text()='Flooring Groups']")}
 get viewButton()               { return $("//a[text()=' View']")}
 get diagramColors()            { return $("//a[text()='Diagram Colors']")}
 get aboutLink()                { return $("//a[text()='About']")}
 get DECounterWall()            {return $("//a[@href='/Administration/SubscriberDesignExtras.aspx']")}
 get DEFlooring()               { return $("//a[@href='/Administration/FlooringDesignExtras.aspx']")}
 get openButton2()              {return $("//a[text()='Open']")}
 get DEeditorPanel()            { return $("#PageLabel")}
 get DEeditorPanel2()           { return $("//span[text()='Edit Counter & Wall Design Extra']")}
 get NewDesignExtra()           {return $("//a[@id='NewDesignExtra']")}
 get cancelButton()             {return $("//button[contains(text(), 'Cancel')]")}
 get taggingInstallMethods ()   { return $("//a[text()='Tagging Install Methods']")}
 get auditReports()             { return $("//a[text()='Audit Reports']")}
 get completeQuotesBuyers()     { return $("//a[text()='Complete Quotes/Buyers']")}
 get setCutoffDate()            { return $("//a[text()='Set Cut-off Date']")}
 get commissionForms()          { return $("//a[text()='Commission Forms']")}
 get catalogs ()                { return $("//a[text()='Catalogs']")}
 get editButton2()              { return $('//a[text()=" Edit"]')}
 get excludedOffering ()        { return $('#filtersLabel')}
 get showProducts ()            { return $("//a[text()=' Show Products']")}
 get catalogDD()                { return $("//select[@id='_ctl0_body_ddlCatalogNames']")}
 get productsList()             { return $("//a[text()='Products List']")}
 get importButton()             { return $("//a[text()=' Import']")}
 get catalogImportPage()        { return $("#_ctl0_body_lblHeading")}
 get detailsTabInProductInfo()  { return $("//a[text()='Details']")}
 get openCommunitiesInDetailsTab()           { return $("//a[text()='Open Communities']")}
 get anyOpenBuyerScenariosInDetailsTab ()    { return $("//a[text()='Any Open Buyer Scenarios']")}
 get openBuyerActiveScenariosInDetailsTab () { return $("//a[text()='Open Buyer Active Scenarios']")}
 get globalHDSCatalogSearch ()              { return $("//a[text()='Global HDS Catalog Search']")}
 get styleNumberTextBox()                   { return $("//input[@id='txtStyleNumber']")}
 get globalSearchButton ()                  { return $("//a[@id='globalSearchButton']")}
 get styleNumberColumnInTable()             { return $("//tbody/tr[1]/td[2]/span[1]")}
 get styleTypeTextBox()                     { return $("//input[@id='txtStyleType']")}
 get commercialLevelCutLoop()               { return $("//span[text()='COMMERCIAL LEVEL CUT LOOP']")}
 get styleNameTextBox()                     { return $("//input[@id='txtStyleName']")}
 get styleNameCoumnInTable()                { return $("//tbody/tr[2]/td[1]/span[1]")}
 get vendorTextBox()                        { return $("//input[@id='txtVendor']")}
 get arizonaTileLLC()                       { return $("//span[text()='ARIZONA TILE LLC (11067)']")}
 get ILGNumber()                            { return $("//input[@id='txtILGNumber']")}
 get ILGNumberColumnInTable()               { return $("//tbody/tr[1]/td[8]/span")}
 get productCategory()                      { return $("//input[@id='txtProductCategory']")}
 get hardwood()                             { return $("//span[text()='Hardwood']")}
 get colorNameTextBox()                     { return $("//input[@id='txtColorName']")}
 get colorColumnInTable ()                  { return $("//tbody/tr[1]/td[6]")}
 get productTypes ()                        { return $("//a[text()='Product Types']")}
 get installMethods()                       { return $("//a[text()='Install Methods']")}

 getFloorGroupVal(groupVal) {
    return $('//div/strong[contains(text(),"Floor Group:")]/../following-sibling::div[1]/select//option[@value='+groupVal+']')
 }
 getSubscriberSettingsPageTab(SubscriberSettingsPageTab){ 
    return $('//a[text()="'+SubscriberSettingsPageTab+'"]')
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
    waitAndClick(this.taggingProductCategories, "tagging  Product categories");
}
clickingOnBuyerTypes (){
    waitAndClick(this.buyerTypes, "Buyer types");
}
clickingOnNewButtonInBuyerTypes() {
    waitAndClick(this.newButton2, "New button  in buyer types");
} 
clickingOnOpenButtonInBuyerTypes() {
    waitAndClick(this.openButton, "Open button");
}
clickingOnCategoryServiceOffering(){
    waitAndClick(this.categoryServiceOffering, "Category service offering");
}
clickingOnNewButtonInCategoryServiceOffering() {
    waitAndClick(this.newButton2, "New button in category service  offering");
}
clickingOnOpenButtonInCategoryServiceOffering() {
    waitAndClick(this.openButton, "Open button");
} 
clicikingSubscriberSettings() {
    waitAndClick(this.subscriberSettings, "subscriber settings");
} 
clickingOnSubscriberSettingsPageTab(SubscriberSettingsPageTab){
    waitAndClick(this.getSubscriberSettingsPageTab(SubscriberSettingsPageTab), 'subscriber settings page tab');
}  
validatePanelForSubscriberSettingsPageTabIsDisplayed(SubscriberSettingsPageTab){
    if (SubscriberSettingsPageTab == 'Company Setup') {
        expectToBeDisplayed(this.companySetupPage, 'company setup page');
    } else if(SubscriberSettingsPageTab == 'Global Settings'){
        expectToBeDisplayed(this.globalSettingsPage, 'global settings page');
    }else if(SubscriberSettingsPageTab == 'Report Setup'){
        expectToBeDisplayed(this.reportSetUpPage, 'report set up page');
    }else if(SubscriberSettingsPageTab == 'Features') {
        expectToBeDisplayed(this.featuresPage,  'featuresPage');
    } else if(SubscriberSettingsPageTab == 'ERP')  {
        expectToBeDisplayed(this.erpPage, ' ERP Page');
    } 
 }
 clickingOnPatternAvailability(){
     waitAndClick(this.patternAvailability, 'pattern availability');
     waitUntilElementIsDisabled(this.LoadingGif);
 } 
 clickingOnFlooringGroups(){
    waitAndClick(this.flooringGroups, 'flooring groups'); 
 }
 clckingOnNewButtonInFlooringGroups(){
     waitAndClick (this.newButton2,'newButton');
 }
 clickingOnOpenButtonFlooringGroups(){
     waitAndClick (this.openButton, "Open button")
 }
 clickingOnViewButtonFlooringGroups(){
     waitAndClick (this.viewButton, "View button")
 }
 clickingOnDiagramColors()  {
     waitAndClick(this.diagramColors,  'diagram Colors');
 }
 clickingOnAboutLink (){
     waitAndClick(this.aboutLink, 'about');
 }
 clickingOnDesignExtras(ServiceOffering){
     if (ServiceOffering == 'Counter & Wall') {
         waitAndClick(this.DECounterWall, 'DE CounterWall');
         waitUntilElementIsDisabled(this.LoadingGif);
     } else if (ServiceOffering == 'Flooring'){ 
         waitAndClick(this.DEFlooring, '  DE Flooring');
         waitUntilElementIsDisabled(this.LoadingGif);
     }
  }
  clickingOnOpenButtonInCounterWallDesignExtras(){
      waitAndClick(this.openButton2, ' Open button' );
  }
  valiadteDesignExtrasEditorPanelIsDisplayed(){
      expectToBeDisplayed(this.DEeditorPanel, 'design extras Editor  Panel');
  }
  clickingOnNewButtonInDECounterWall(){
      waitAndClick(this.NewDesignExtra, ' New button   in DE CounterWall');
  }
  clickingOnCancelButton(){
      waitAndClick(this.cancelButton, ' Cancel button');
  }
  valiadteDesignExtrasEditorPanelIsNOTDisplayed(){
      expectNotToBeDisplayed(this.DEeditorPanel2, "design extras Editor  Panel")
  }
  clickingOnTaggingInstallMethods()   {
      waitAndClick (this.taggingInstallMethods, 'Tagging Install Methods');
  }
  clickingOnAuditReports() {
      waitAndClick (this.auditReports, 'Audit Reports');
  }
  clickingOnCompleteQuotesBuyers() {
      waitAndClick (this.completeQuotesBuyers, 'CompleteQuotes')
  }
  clickingOnSetCutoffDate() {
      waitAndClick (this.setCutoffDate, 'Set Cutoff Date');
  }
  clickingOnCommissionForms() {
      waitAndClick (this.commissionForms, 'Commission Forms');
  }
  clickingOnOpenButtonInCommissionForms() {
      waitAndClick (this.openButton, 'Open button');
  }
  clickingOnCatalogs() {
    waitAndClick (this.catalogs, 'Catalogs');
  }
  clickingOnEditButtonInCatalogList() {
      waitAndClick (this.editButton2, 'Edit button');
  }
  validateExcludedOfferingIsDisplayed(){
      expectToBeDisplayed(this.excludedOffering, ' excluded Offering')
  } 
  clickingOnShowProducts(){
      waitAndClick(this.showProducts, ' show  Products');
  }
  clickingOnNewButtonInCatalogList(){ 
      waitAndClick(this.newButton2, 'New button');
  }
  validateCatalogDDIsDisplayed (){
      expectToBeDisplayed(this.catalogDD, ' catalog Drop Down');
  }
  clickingOnProductsList() {
      waitAndClick(this.productsList, ' products List');
  }
  clickingOnImportButtonInProductList(){ 
      waitAndClick(this.importButton, 'Import button');
  }
  validateCatalogImportPage() {
      expectToBeDisplayed(this.catalogImportPage, ' catalog Import Page');
  }
  clickingOnOpenButtonInProductList() {
      waitAndClick(this.openButton, 'Open button');
      waitUntilElementIsDisabled(this.LoadingGif);
  }
  clickingOnOpenCommunitiesInProductInfo()  {
      waitAndClick(this.detailsTabInProductInfo, '  details tab in product info');
      waitAndClick(this.openCommunitiesInDetailsTab, ' open communities in details tab');
  }
  clickingOnAnyOpenBuyerScenariosInDetailsTab(){ 
      waitAndClick(this.detailsTabInProductInfo, 'details tab in product info');
      waitAndClick(this.anyOpenBuyerScenariosInDetailsTab, ' any open scenarios in details tab');
  }
  clickingOnOpenBuyerActiveScenariosInDetailsTab (){
    waitAndClick(this.detailsTabInProductInfo, 'details tab in product info');
    waitAndClick(this.openBuyerActiveScenariosInDetailsTab, 'open buyer active scenarios in details tab');
  }
  clickingOnGlobalHDSCatalogSearch (){
      waitAndClick(this.globalHDSCatalogSearch, 'global catalog search'); 
  }
  setValueToStyleNumberTextBox (){
      sendKeys(this.styleNumberTextBox, this.getData()['stylenumber'], 'style Number TextBox');
      waitAndClick(this.globalSearchButton, 'global search');
      waitUntilElementIsDisabled(this.LoadingGif);
      pauseBrowser(10000)
  }
  validateSearchFilterProductsIsDisplayedForSN (){
      let text = this.styleNumberColumnInTable.getText();
      let isDisplayed = text.includes(this.getData()['stylenumber']);
      allureReporter.addStep('search filter products according to the given keyword isDisplayed>>>>' +isDisplayed)
      return isDisplayed;
  }
  setValueToStyleTypeTextBox (){
    sendKeys(this.styleTypeTextBox, this.getData()['styletype'], 'style type');
    waitAndClick(this.globalSearchButton, 'global search');
    waitUntilElementIsDisabled(this.LoadingGif);
    pauseBrowser(10000)
  }
  validateSearchFilterProductsIsDisplayedForST() {
      this.commercialLevelCutLoop.scrollIntoView();
      expectToBeDisplayed(this.commercialLevelCutLoop, 'commercial level cut loop');
  }
  setValueToStyleNameTextBox (){
      sendKeys(this.styleNameTextBox, this.getData()['stylename'], 'style name');
      waitAndClick(this.globalSearchButton, 'global search');
      waitUntilElementIsDisabled(this.LoadingGif);
      pauseBrowser(25000)
  }
  validateSearchFilterProductsIsDisplayedForStyleName() {
    this.styleNameCoumnInTable.scrollIntoView();
    let text = this.styleNameCoumnInTable.getText();
    let isDisplayed = text.includes(this.getData()['stylename']);
    allureReporter.addStep('search filter products according to the given keyword isDisplayed>>>>' +isDisplayed)
    return isDisplayed;
  }
  setValueToVendorTextBox() {
      sendKeys(this.vendorTextBox, this.getData()['vendor'], 'vendor');
      waitAndClick(this.globalSearchButton, 'global search');
      waitUntilElementIsDisabled(this.LoadingGif);
      //pauseBrowser(25000);
  }
  validateSearchFilterProductsIsDisplayedForVendor() {
    //this.arizonaTileLLC.scrollIntoView();
    expectToBeDisplayed(this.arizonaTileLLC, 'ARIZONA TILE LLC (11067)')
  }
  setValueToILGNumberTextBox() {
      sendKeys(this.ILGNumber, this.getData()['ilgnumber'], 'ILG Number');
      waitAndClick(this.globalSearchButton, 'global search');
      waitUntilElementIsDisabled(this.LoadingGif);
      pauseBrowser(10000)
  }
    validateILGNumberColumnInTable() { 
        this.ILGNumberColumnInTable.scrollIntoView();
        let text = this.ILGNumberColumnInTable.getText();
        let isDisplayed = text.includes(this.getData()['ilgnumber']);
        allureReporter.addStep('search filter products according to the given keyword isDisplayed>>>>' +isDisplayed)
        return isDisplayed;    
    }
    setValueToProductCategoryTextBox  () { 
        sendKeys(this.productCategory,this.getData()['productcategory'] , ' product Category');
        waitAndClick(this.globalSearchButton, 'global search');
        waitUntilElementIsDisabled(this.LoadingGif);
        pauseBrowser(20000)  
    }
    validateSearchFilterProductsIsDisplayedForPC(){
        this.hardwood.scrollIntoView();
        expectToBeDisplayed(this.hardwood, 'hardwood');
    }
   setValueToColorNameTextBox (){
       sendKeys(this.colorNameTextBox, this.getData()['colorname'],'colorName');
       waitAndClick(this.globalSearchButton, 'global search');
       waitUntilElementIsDisabled(this.LoadingGif);
       pauseBrowser(15000);
   }
   validateSearchFilterProductsIsDisplayedForCN(){
    this.colorColumnInTable.scrollIntoView();
    let text = this.colorColumnInTable.getText();
    let isDisplayed = text.includes(this.getData()['colorname']);
    allureReporter.addStep('search filter products according to the given keyword isDisplayed>>>>' +isDisplayed)
    return isDisplayed; 
   }  
   clickingOnproductTypes(){
       waitAndClick(this.productTypes, 'product Types')
   }
   clickingOnOpenButtonInProductTypes(){
       waitAndClick(this.openButton,  'open button')
   }
   clickingOnNewButtonInProductTypes(){
       waitAndClick(this.newButton2, 'new button')
   }
   clickingOnInstallMethods (){
       waitAndClick(this.installMethods, 'install methods')
   }  
   
  getData(){
    return super.testDataJson(CATALOG_DATA_FILE_NAME);
    }

}
export default new HomePage();