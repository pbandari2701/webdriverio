import { Given, When, Then } from "@cucumber/cucumber";
import { pauseBrowser, expectToHaveTitle } from "../helpers/customcommands";
import homePage from "../pageobjects/home.page";
import HomePage from '../pageobjects/home.page'


Then(/^The appropriate settings pertaining to the (.+) should be validated$/, function(subscriber){
    console.log("subscriber is"+subscriber)
    HomePage.navigateToProductListPage()
    HomePage.validateProductDetails(subscriber)
});

Given(/^HDS Home page is displayed$/, function(){
    expectToHaveTitle('- HDS');
})

When(/^Manage User link under Security Menu is clicked$/, function(){
    HomePage.getManageUsers();
})

Then(/^Manage Users page is loaded$/,  function(){   
    expectToHaveTitle('Manage Users - HDS')
})
When(/^Area Types link under Site Administration Menu is clicked$/, function(){
    HomePage.clcikingOnAreaTypesInSiteAdmin();
})
Then(/^Area Typespage is loaded$/,  function(){
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
Then(/^Assign Take Offs page is loaded$/,  function(){
    expectToHaveTitle('Assign Take Offs - HDS');
})
When(/^the Missing Quantities Report link in the Site Admin menu is clicked$/, function(){ 
    HomePage.clickingOnMissingQuantitiesReport();
})    
Then(/^the Report Viewer page loaded$/,  function() {
    expectToHaveTitle('Report Viewer - HDS');
})
When(/^the Edit button is clicked for a randomly selected Takeoff in the site-level Assign Take Offs list page$/, function(){
    HomePage.clickingOnEditButtonInAssignTakeOffs();
})
Then(/^the take Off editor Modal is displayed in the site-level Assign Take Offs list page$/, function(){
    HomePage.validateTakeOffEditorModalIsDisplayed();
})
When(/^the Disable button is clicked for a randomly selected Takeoff in the site-level Assign Take Offs list page$/, function(){
    HomePage.clickingOnDisableButtonAssignTakeOffs();
})
Then(/^the Modal for disabling a take off is displayed in the site-level Assign Take Offs list page$/, function(){
    HomePage.validateDisableTakeOffPopUpIsDisplayed();
})
When(/^the Add take off button is clicked for a randomly selected Area Type in the site-level Assign Take Offs list page$/, function(){
    HomePage.clickingOnAddTakeOffButtonInareaType();
})
Then(/^the Modal for adding a take off is displayed in the site-level Assign Take Offs list page$/, function(){
    HomePage.validateAddTakeOffPopUpIsDisplayed();
})
When(/^Patterns link under Site Administration Menu is clicked$/, function(){
    HomePage.clickingOnPatterns();
})
Then(/^Patterns page is loaded$/,  function(){
    expectToHaveTitle('Patterns - HDS');
})
When(/^the New Pattern button is clicked in the site-level Patterns list page$/, function(){
    HomePage.clickingOnNewPatternButtonInPatterns();
    })
Then(/^the New Pattern Modal is displayed in the site-level patterns list page$/, function(){
    HomePage.validateAddPatternPopUpIsDisplayed();
})
Given(/^Area Type Selected$/, function(){

})
When(/^the Edit button is clicked for a randomly selected Pattern in the site-level Pattern page$/, function(){

})
Then(/^the pattern editor Modal is displayed in the site-level patterns list page$/, function(){

})
When(/^Tagging Product Categories page link under Site Administration Menu is clicked$/, function(){
    HomePage.clickingOnTaggingProductCategories();
})
Then(/^Tagging Product Categories page is loaded$/, function () {
    expectToHaveTitle('Tagging Product Categories - HDS');
}) 
When(/^Buyer Types Page link under Site Administration Menu is clicked$/, function(){
    HomePage.clickingOnBuyerTypes();
})
Then(/^Buyer Types Page is loaded$/,  function () {
    expectToHaveTitle('Buy Type List - HDS');
}) 
When(/^the New button is clicked in the Buyer Type list page$/, function(){
    HomePage.clickingOnNewButtonInBuyerTypes();
    })
Then(/^the Buyer type editor page under Site Admin menu is loaded$/,  function(){
    expectToHaveTitle('HDS (QA) - Buyer Types Editor - HDS');
})
When(/^the Open button is clicked for a randomly selected Buyer type in the Buyer Types list page$/, function(){
    HomePage.clickingOnOpenButtonInBuyerTypes();
})
When(/^Category Service Offering page link under Administration Menu is clicked$/, function(){
    HomePage.clickingOnCategoryServiceOffering();
})
Then(/^Category Service Offering page is loaded$/,  function(){
    expectToHaveTitle('Category Service Offering - HDS');
})
When(/^the New button is clicked in the Category Service Offering list page$/, function(){
    HomePage.clickingOnCategoryServiceOffering();
})
Then(/^the Category Service Offering editor page is loaded$/,  function(){
    expectToHaveTitle('Category Service Offering Editor - HDS')
})
When(/^the Open button is clicked for a randomly selected Category in the Category Service Offering list page$/, function(){
    HomePage.clickingOnOpenButtonInCategoryServiceOffering();
})
When(/^Subscriber Settings page link under Administration Menu is clicked$/, function(){
    HomePage.clicikingSubscriberSettings();
})
Then(/^Subscriber Settings page is loaded$/,  function() {
    expectToHaveTitle('HDS (QA) - Subscriber Settings - HDS');
}) 
When(/^the (.+) drop down for maximum install Method waste factor is clicked in the company setup tab of subscriber settings page$/, function(Service_Offering){

})
Then(/^a drop down for showing max install Method waste factor is displayed for (.+) service offering is displayed in the Subscriber Settings page$/, function(Service_Offering){

})
When(/^the (.+) tab is clicked in the Subscriber Settings page$/, function(SubscriberSettingsPageTab){
    HomePage.clickingOnSubscriberSettingsPageTab(SubscriberSettingsPageTab);
})
Then(/^the panel for (.+) tab is displayed in the Subscriber Settings page$/, function(SubscriberSettingsPageTab){
    HomePage.validatePanelForSubscriberSettingsPageTabIsDisplayed(SubscriberSettingsPageTab);
})
When(/^Pattern Availability page link under Administration Menu is clicked$/, function(){
    HomePage.clickingOnPatternAvailability();
})
Then(/^Pattern Availability page is loaded$/,  function() {
    expectToHaveTitle('Pattern Availability - HDS');
}) 
When(/^Flooring Groups page link under Administration Menu is clicked$/, function(){
    HomePage.clickingOnFlooringGroups();
})
Then(/^Flooring Groups page is loaded$/,  function() {
    expectToHaveTitle('Flooring Groups - HDS');
}) 
When(/^the New button is clicked in the in the Flooring Groups list page under Administration Menu$/, function(){
    HomePage.clckingOnNewButtonInFlooringGroups();
})
Then(/^the Flooring Groups editor page is loaded$/,  function(){
    expectToHaveTitle('Flooring Group Editor - HDS');
})
When(/^the Open button is clicked for a randomly selected group in the flooring group list page$/, function(){
    HomePage.clickingOnOpenButtonFlooringGroups();
})
When(/^the 'view' button is clicked in the Flooring Group Editor page under Administration menu$/,function () {
    HomePage.clickingOnViewButtonFlooringGroups();
})
Then(/^the view history page for the flooring group is loaded$/,  function(){
    expectToHaveTitle('Flooring Group History - HDS');
})
When(/^Diagram Colors page link under Administration Menu is clicked$/, function(){
    HomePage.clickingOnDiagramColors();
})
Then(/^Diagram Colors page is loaded$/,  function(){
    expectToHaveTitle('Diagram Color Preferences - HDS');
})

When(/^About page link under Administration Menu is clicked$/, function(){
    HomePage.clickingOnAboutLink();
})
Then(/^About page is loaded$/,  function(){
    expectToHaveTitle('About - HDS');
}) 
When(/^Design Extras page link under Administration Menu is clicked for (.+) service offering$/, function(ServiceOffering){
    HomePage.clickingOnDesignExtras(ServiceOffering);
})
Then(/^Design Extras page is loaded$/,  function(){
    expectToHaveTitle(' HDS (QA) - Design Extras - HDS');
})
When(/^the Open button is clicked for a randomly selected design Extra in the subscriber Design Extra list page$/, function(){
    HomePage.clickingOnOpenButtonInCounterWallDesignExtras();
})
Then(/^the design extra editor panel is displayed in the subscriber design extra page$/, function() { 
    HomePage.valiadteDesignExtrasEditorPanelIsDisplayed();
})
When(/^the New button is clicked in the subscriber Design Extra list page$/, function(){
    HomePage.clickingOnNewButtonInDECounterWall();
})
When(/^the product search button is clicked in the design Extra page$/, function() {

}) 
Then(/^the Design Extra Item Selector Modal is displayed in the subscriber design extra page$/, function() { 

})
When(/^the Cancel button is clicked in the design Extra page$/, function() {
    HomePage.clickingOnCancelButton();
}) 
Then(/^the design extra editor panel is no longer displayed in the subscriber design extra page$/, function(){
    HomePage.valiadteDesignExtrasEditorPanelIsNOTDisplayed();
})
When(/^Tagging Install Methods page link under Administration Menu is clicked$/, function(){
    HomePage.clickingOnTaggingInstallMethods();
})
Then(/^Tagging Install Methods page is loaded$/,  function(){
    expectToHaveTitle('Tagging Install Methods - HDS');
}) 
When(/^Audit Report page link under Administration Menu is clicked$/, function(){
    HomePage.clickingOnAuditReports();
})
Then(/^Admin Audit Report page is loaded$/,  function(){
    expectToHaveTitle('Audit Reports - HDS');
}) 
When(/^Complete Quote or Buyers page link under Accounting Menu is clicked$/, function(){
    HomePage.clickingOnCompleteQuotesBuyers();
})
Then(/^Complete Quote or Buyers page is loaded$/,  function(){
    expectToHaveTitle('Complete Quotes or Buyers - HDS');
})
When(/^Set Cut Off Dates page link under Accounting Menu is clicked$/, function(){
    HomePage.clickingOnSetCutoffDate();
})
Then(/^Set Cut Off Dates page is loaded$/,  function(){
    expectToHaveTitle('	Set Completion Cut-off Date - HDS');
}) 
When(/^Commission Forms page link under Accounting Menu is clicked$/, function(){
    HomePage.clickingOnCommissionForms();
})
Then(/^the Commission Forms list page under Accounting menu is loaded$/,  function(){
    expectToHaveTitle('HDS (QA) - Commission Forms - HDS')
}) 
When(/^the Open button for the first Commission form  listed in the commission forms list page is clicked$/, function(){ 
    HomePage.clickingOnOpenButtonInCommissionForms();
}) 
Then(/^the Commission Form detail page under Accounting menu is loaded$/,  function(){
    expectToHaveTitle('Commission Form - HDS');
})
When(/^Catalogs page link under Product Management Menu is clicked$/, function(){
    HomePage.clickingOnCatalogs();
})
Then(/^Catalogs page is loaded$/, function(){
    expectToHaveTitle('Catalog List - HDS')
}) 
When(/^the Edit button for the first catalog listed is clicked$/, function(){
    HomePage.clickingOnEditButtonInCatalogList();
})
Then(/^Excluded Offering text element is displayed$/, function(){
    HomePage.validateExcludedOfferingIsDisplayed();
})
When(/^the Show Products button for the first catalog listed is clicked$/, function(){
    HomePage.clickingOnShowProducts();
})
Then(/^Product List page is loaded$/,  function() {
    expectToHaveTitle('HDS (QA) - Product List - HDS');
})
When(/^new button is clicked in the Catalog list page$/, function(){
    HomePage.clickingOnNewButtonInCatalogList();
})
Then(/^the catalog drop down field is displayed$/,  function(){
    HomePage.validateCatalogDDIsDisplayed();
})
When(/^Product List page link under Product Management Menu is clicked$/, function(){
    HomePage.clickingOnProductsList();
})
When(/^the Import button in the Product list page is clicked$/, function(){
    HomePage.clickingOnImportButtonInProductList();
})
Then(/^Subscriber Catalog Import page is loaded$/,  function(){
    HomePage.validateCatalogImportPage();
}) 
When(/^the Open button for the first product listed in the Product list page is clicked$/, function(){
    HomePage.clickingOnOpenButtonInProductList();
})
Then(/^Product Editor page is loaded$/,  function() {
    expectToHaveTitle('HDS (QA) - Product Editor - HDS');
})
When(/^the 'Open Communities' link is clicked in the Product Editor page$/, function()    {
    HomePage.clickingOnOpenCommunitiesInProductInfo();
})
Then(/^Communities page of the Community Management Menu is loaded$/,  function(){
    expectToHaveTitle('HDS (QA) - Communities List - HDS');
})
When(/^the 'Any Open Buyer Scenarios' link is clicked in the Product Editor page$/, function() {
    HomePage.clickingOnAnyOpenBuyerScenariosInDetailsTab();
})
Then(/^the Buyers list page is loaded$/,  function(){
    expectToHaveTitle('HDS (QA) - Buyers - HDS');
})
When(/^the 'Open Buyer Active Scenarios' link is clicked in the Product Editor page#$/, function() {
    HomePage.clickingOnOpenBuyerActiveScenariosInDetailsTab();
})
When(/^Global HDS Catalog Search List page link under Product Management Menu is clicked$/, function(){
    HomePage.clickingOnGlobalHDSCatalogSearch();
})
Then(/^Global HDS Catalog Search List page is loaded$/,  function(){
    expectToHaveTitle('Global HDS Catalog Search - HDS');
})
Then(/^Write (.+) on SAP Number textbox and Searched$/, function(){

})
Then(/^verify the search filter products according to the given keyword for Style Number$/, function() {
    HomePage.validateSearchFilterProductsIsDisplayedForSN();
})
Then(/^click on Export Button to export the product to the spreadsheet$/, function() {

})
Then(/^Write F70ACCE on Style Number textbox and Searched$/, function(){
    HomePage.setValueToStyleNumberTextBox();
})
Then(/^Write COMMERCIAL LEVEL CUT LOOP on Style Type textbox and Searched$/, function() {
    HomePage.setValueToStyleTypeTextBox();
})
Then(/^verify the search filter products according to the given keyword for Style Type$/, function() {
    HomePage.validateSearchFilterProductsIsDisplayedForST();
})
Then(/^Write ante on Style Name textbox and Searched$/,  function(){
    HomePage.setValueToStyleNameTextBox();
})
Then(/^verify the search filter products according to the given keyword for Style Name$/, function() {
    HomePage.validateSearchFilterProductsIsDisplayedForStyleName();
})
Then(/^Write ARIZONA TILE LLC 11067 on Vendor textbox and Searched$/, function(){
    HomePage.setValueToVendorTextBox();
})
Then(/^verify the search filter products according to the given keyword for vendor$/, function() {
    HomePage.validateSearchFilterProductsIsDisplayedForVendor();
})
Then(/^Write ILG-1001-10040 on ILG Number textbox and Searched$/, function(){
    HomePage.setValueToILGNumberTextBox();
})
Then(/^verify the search filter products according to the given keyword for ILG Number$/, function() {
    HomePage.validateILGNumberColumnInTable();
})
Then(/^Write hardwood on Product Category textbox and Searched$/,  function(){
    HomePage.setValueToProductCategoryTextBox();
})
Then(/^verify the search filter products according to the given keyword for Product Category$/, function() {
    HomePage.validateSearchFilterProductsIsDisplayedForPC();
})
Then(/^Write TOUR  on Color Name textbox and Searched$/,  function(){
    HomePage.setValueToColorNameTextBox();
})
Then(/^verify the search filter products according to the given keyword for Color Name$/, function() {
    HomePage.validateSearchFilterProductsIsDisplayedForCN();
})
When(/^Product Types  page link under Product Management Menu is clicked$/, function(){
    HomePage.clickingOnproductTypes();
})
Then(/^Product Types  page is loaded$/,  function() {
    expectToHaveTitle('Product Types - HDS')
}) 
When(/^the Open button for the first product type In the product types list page is clicked$/, function(){
    HomePage.clickingOnOpenButtonInProductTypes();
})
Then(/^Product Types Editor page is loaded$/,  function(){
    expectToHaveTitle('Product Type Editor - HDS')
})
When(/^the New button in the Product Type list page is clicked$/, function(){
    HomePage.clickingOnNewButtonInProductTypes();
})
When(/^Install Methods page link under Product Management Menu is clicked$/, function(){
    HomePage.clickingOnInstallMethods();
})
Then(/^Install Methods list page is loaded$/,  function(){
    expectToHaveTitle('Install Methods - HDS');
}) 
When(/^the Open button for the first Install method is clicked in the Install methods page$/, function() {
    HomePage.clickingOnOpenButtonInInstallmethods();
})
Then(/^the install Methods Editor page is loaded$/,  function() {
    expectToHaveTitle('Install Method Editor - HDS');
})
When(/^the New button is clicked in the Install Methods list page$/, function(){
    HomePage.clickingOnNewButtonInInstallMethods();
})
When(/^the View button is clicked in the Install Method Editor page$/, function() { 
    HomePage.clickingOnViewButtonInInstallmethodsEDitorPage();
})
Then(/^the Install Method History page is loaded$/,  function(){
    expectToHaveTitle('Install Method History List - HDS')
})
When(/^the (.+) Install Methods Group link under Product Management Menu is clicked$/, function (ServiceOffering){
    HomePage.clickOnServiceOfferingInInstallMethods(ServiceOffering);
})           
Then(/^the (.+) Install Methods Group page is loaded$/, function (ServiceOffering) {
    if (ServiceOffering == 'Flooring'){
        expectToHaveTitle('Flooring Install Method Groups - HDS')
    }else if (ServiceOffering == 'Counter & Wall'){
        expectToHaveTitle('Counter & Wall Install Method Groups - HDS')
    }
})       
When(/^the Edit button is clicked for a randomly selected Install Method Group in the Install Method group page for Flooring$/, function() { 
    HomePage.clickingOnEditButtonInInstallMethodsForFlooring();
})       
Then(/^the selected install method group displays in edit mode in the in the Install Method group page$/, function() {
    HomePage.validateInstallMethodPageDisplayedInEditMode();
}) 
When(/^the Edit button is clicked for a randomly selected Install Method Group in the Install Method group page for CW$/, function() { 
    HomePage.clickingOnEditButtonInInstallMethodsForCW();
})
When(/^the Delete button is clicked for a randomly selected Install Method Group in the Install Method group page for CW$/, function() { 
    HomePage.clickingOnDeleteButtonInInstallMethodsForCW();
})
Then(/^a confirmation dialog or alert is displayed in the Install Method group page$/, function(){ 
    HomePage.validateConfirmationDialogIsDisplayed();
})
When(/^the Delete button is clicked for a randomly selected Install Method Group in the Install Method group page for Flooring$/, function() {
    HomePage.clickingOnDeleteButtonInInstallMethodsForFlooring();
})
When(/^Communities page link under Design Center Menu is clicked$/, function(){
    HomePage.clickingOnDCCommunities();
})
Then(/^Communities page of the Design Center Menu is loaded$/,  function(){
    expectToHaveTitle('HDS (QA) - Communities - HDS')
})
When(/^the open button is clicked for Bella Fiore-25522250000 Community in the Design Center Communities list page$/, function(){
    HomePage.clickingOnOpenButtonInDCCommunities();
})
Then(/^the design center community home page is loaded$/,  function(){
    expectToHaveTitle('Community Details - HDS');
})
When(/^Commission Forms page link under Design Center Menu is clicked$/, function(){
    HomePage.clickingOnCommissionFormDC();
})
Then(/^the design center Commission Form page is loaded$/,  function(){
    expectToHaveTitle('Commission Form - HDS')
}) 
When(/^the Homesite setup link is clikced in the design center community home page$/, function() {
    HomePage.clickingOnHomesiteSetupDC();
} )
Then(/^the Homesite list page for the  design center community is loaded$/, function() {
    expectToHaveTitle("Homesite Setup - HDS")
})
When(/^the New button is clikced in the design center Community Homesite list page$/, function(){

})
Then(/^the Homesite editor or information page for the design center community homesite is loaded$/,  function(){

})
Then(/^ignore Homesite unsaved alert message$/,  function() {

}) 








 






























