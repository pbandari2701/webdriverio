import { expect } from "pactum";
import { clearTextBox,switchToPreviousWindow,closeWindow, expectToBeDisabled,assertEquals,switchToNextWindowArray,expectToHaveUrlContaining, expectToBeDisplayed, expectNotToBeDisplayed,switchToNewWindow, expectToBePresent, expectToHaveTitle, getAttributeValue, getTextOfElement, pauseBrowser, reloadPage, sendKeys, sendTab, waitAndClick, waitForDisplay,waitUntilElementIsClickable,waitUntilElementIsDisabled,waitUntilElementIsDisplayed, waitUntilElementIsEnabled, acceptAlert, selectByTxt } from "../helpers/customcommands";
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
 get disableButton2 ()          { return $("//button[text()=' Disable']")}
 get patternImg ()              { return $("//img[@id='originalPatternImage']")}
 get disableDefaultArea()       { return $("//h4[text()='Disable Default Area']")}
 get deleteButton()             { return $('//a[@title="Delete"]')}
 get deleteDefaultArea()        { return $("//h4[text()='Delete Area Type']")}
 get assignTakeOffs()           { return $("//a[text()='Assign Take Offs']")}
 get deleteModalAT ()           { return $("//h4[text()= 'Delete Take Off']")}                      
 get missingQuantitiesReport()  { return $("//a[text()='Missing Quantities Report']")}
 get editTakeOff()              { return $("//h4[text()='Edit Take Off']")}                  
 get LoadingGif()               { return $("//h3[contains(text(),'Loading')]")}
 get disableTakeOff()           { return $("//h4[text()='Disable Take Off']")}
 get addTakeOffButton()         { return $('//a[text()=" Add Take Off"]')}
 get addNewTakeOffButton()      { return $('//a[text()=" Add New Take Off"]')}
 get addTakeOffPopUp ()         { return $('//h4[text()="Add Take Off"]')}
 get patterns()                 { return $("//a[text()='Patterns']")}
 get newPattern ()              { return $("//button[text()=' New Pattern']")}
 get hideEditPattern ()         { return $("//div[@id='editPatternModal']//a[text()='hide']")}
 get hideCopyPattern ()         { return $("//div[@id='copyPatternModal']//a[text()='hide']")}
 get hideDisableaPattern ()     { return $("//div[@id='disablePatternModal']//a[text()='hide']")}
 get patternUpdateImg ()        { return $("//img[@id='originalPatternImage']")}
 get fileUploadTxtBox ()        { return $("//input[@id='fileEditUpload']")}
 get disablePatternModal ()     { return $("//h4[text()= 'Disable Pattern']")}
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
 get viewButton2 ()             { return $("//a[text()='View']")}
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
 get editBtn3()                 { return $('//button[text()=" Edit"]')}
 get editBtn4 ()                { return $('//a[text()="Edit"]')}
 get editpatternModal ()        { return $("//h4[text()= 'Edit Pattern']")}
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
 get IMCounterAndWall()                     { return $("//a[@href='/ProductManagement/CWInstallMethodGroups.aspx']")}
 get IMFlooring()                           { return $("//a[@href='/ProductManagement/FlooringInstallMethodGroups.aspx']")}
 get editButton2()                          { return $('//a[text()=" Edit"]')}
 get updateButton ()                        { return $("//a[text()=' Update']")}
 get deleteButton2 ()                       { return $('//a[text()=" Delete"]')}
 get DCCommunities()                        { return $("//a[@href='/dc__community_list.aspx']")}
 get commissionFormDC ()                    { return $('//a[@href="/dc__commission_form.aspx"]')}
 get homesiteSetupDC ()                     { return $("//a[text()='Homesite Setup']")}
 get unsavedChanges ()                      { return $("//strong[text()='YOU HAVE UNSAVED CHANGES!']")}
 get buyersDC ()                            { return $('//a[@href="/dc__buyer_list.aspx"]')}
 get serchBox ()                      { return $("//input[@id='txtSearchPhrase']")}
 get searchGo ()                            { return $("//a[@id='cmdSearch']")}
 get monthlyPaymentButton ()                { return $("//a[@id='_ctl0_MS_hypLoanParameters']")}
 get monthlyPaymentWindow()                 { return $("//span[@id='lblHeading']")}
 get addAdditionalBuyerButton ()            { return $("//a[@id='_ctl0_body_cmdAddContact']")}
 get updateCostsButton ()                   { return $("//input[@id='_ctl0_body_ctlCounterWallQuoteInfo_btnViewCostUpdates']")}
 get updateCostsPopUp ()                    { return $("//h4[text()='Update Costs']")}
 get viewQuoteButtonCW ()                   { return $("//input[@id='_ctl0_body_ctlCounterWallQuoteInfo_btnViewQuote']")}
 get viewQuoteButtonFlooring()              { return $("//input[@id='_ctl0_body_ctlFlooringQuoteInfo_btnViewQuote']")}
 get viewQuoteButtonLo()                    { return $ ("//input[@id='_ctl0_body_ctlLifeOptsQuoteInfo_btnViewQuote']")} 
 get firstTracerDiagram ()                  { return $("//a[@id='_ctl0_body_repTracerDiagrams__ctl0_lnkEditTracing']")} 
 get CWQuoteLink ()                         { return $("//a[@id='_ctl0_MS_hypCounterWallQuote']")}
 get flooringQuoteLink()                    { return $("//a[@id='_ctl0_MS_hypFlooringQuote']")}
 get LOQuotedLink ()                        { return $("//a[@id='_ctl0_MS_hypLifestyleOptionsQuote']")}
 get scenarioListCW ()                      { return $("//a[@id='hypCWScenarioList']")}
 get scenarioListFl()                       { return $("//a[@id='hypFloorinhScenarioList']")}
 get scenarioListLo ()                      { return $("//a[@id='hypOptionList']")}
 get FlSelectorPageHeading ()               { return $("//span[@id='_ctl0_body_lblHeadingDetail']")}
 get selectionsFl ()                        { return $("//a[@id='hypFlooringSelections']")}
 get printPriliminaryQuoteBtn ()            { return $('//input[@value="Print Preliminary Quote"]')}
 get printPriliminaryQuoteBtnCW ()          { return $("//button[text()='Print Preliminary Quote']")}
 get calculatorBreakdownReportButton()      { return $("//a[text()=' Calculator Breakdown Report']")}    
 get wholeHouseCarpet ()                    { return $("//a[text()='Whole House Carpet']")}
 get diningroomLink ()                      { return $("//a[text()='33 Dining ']")}
 get addNewItemBtn  ()                      { return $("//a[text()=' Add New Item']")}
 get addlItemsEditorField ()                { return $("//h4[text()='Additional Item Editor:']/following-sibling::div[1]")}
 get cancelButton2 ()                       { return $("//a[text()='Cancel']")}
 get copyButton2()                          { return $("//button[text()=' Copy']")}
 get copyPatternModal()                     { return $("//h4[text()= 'Copy Pattern']")}
 get tracerBtn ()                           { return $("//button[text()=' Tracer ']")}
 get modifyFlooringSelectionTab ()          { return $("//img[@id='imgTab__Mod']")}
 get addlItemsTab ()                        { return $("//img[@id='imgTab__Add']")}
 get roomStandardsTab ()                    { return $("//img[@id='imgTab__Std']")}
 get flooringExtrsaTab ()                   { return $("//img[@id='imgTab__Extras']")}
 get adjustmentsTab ()                      { return $("//img[@id='imgTab__Adj']")}
 get addNewAdjustmentBtn ()                 { return $("//a[text()=' Add New Adjustment']")}
 get adjustmentEditorField ()               { return $("//h4[text()='Adjustment Editor:']/following-sibling::table")}
 get modifyFlooringSelectionPanel ()        { return $('#pnlModifyFlooringSelections')}
 get flooringExtrasPanel ()                 { return $('#pnlFlooringExtras')}
 get roomStandardsPanel ()                  { return $('#pnlRoomStandards')} 
 get adjustmentListPanel ()                 { return $('#pnlAdjustmentsList')}
 get addlItemsPanel ()                      { return $('#pnlAdditionalItemsList')}
 get selectFromProductListButton ()         { return $("//button[@id='product-list-button']")}
 get productSearchModal ()                  { return $('//div[@class="modal-body"]')}
 get goButton ()                            { return $("//a[@id='quick-search-button']")}
 get productInProductSearchModal ()         { return $('//span[@class="select-product-link"]')}
 get applyBtn ()                            { return $('#buttonApplySearch')}
 get selectedProductLabel ()                { return $('#lblProduct')}
 get copyButton ()                          { return $("#cmdCopyCwDesign")}
 get copyDesignScenario ()                  { return $("//h4[text()='Copy Counter & Wall Scenario']")}
 get NewBtn3 ()                             { return $("//button[contains(text(),'New')]")}
 get createNewScenario ()                   { return $("//h4[text()= 'Create New Scenario']")}
 get viewLatestQuoteBtn ()                  { return $("//input[@id='_ctl0_body_viewLatestQuote']")}
 get viewLatestQuoteBtnInLO ()              { return $("//input[@id='_ctl0__ctl0_body_body_viewLatestQuote']")}
 get viewQuoteHistoryCW ()                  { return $("#_ctl0_body_ctlCounterWallQuoteInfo_btnViewQuoteHistory")}
 get viewQuoteHistoryFl ()                  { return $("#_ctl0_body_ctlFlooringQuoteInfo_btnViewQuoteHistory")}
 get viewQuoteHistoryLO()                   { return $("#_ctl0_body_ctlLifeOptsQuoteInfo_btnViewQuoteHistory")}
 get CWQuoteHistory ()                      { return $("//span[text()='Counter & Wall Quote History']")}           
 get flooringQuoteHistory ()                { return $("//span[text()='Flooring Quote History']")}
 get LOQuoteHistory ()                      { return $("//span[text()='Lifestyle Options Quote History']")}
 get areaTypeDD ()                          { return $("//select[@id='areaTypeFilter']")}
 get standardArea  ()                       { return $ ("//span[text()= 'Gourmet Kitchen Backsplash']")} 
 get changeLayoutBtn ()                     { return $("//button[text()='Change Layout']")} 
 get changeLayoutModal ()                   { return $("//h4[text()='Change Layout']")}
 get selectGroutBtn ()                      { return $("//button[text()='Select Grout']")}
 get selectGroutModal ()                    { return $("//h4[text()='Select Grout']")}
 get optionalDesignFeatureBtn ()            { return $("//button[@id='buttonOptionalTakeoffs']")}
 get optionalDesignFeaturesModal ()         { return $("//h4[text()='Optional Design Features']")}
 get specialityItemsBtn ()                  { return $("//button[@id='buttonAdditionalItems']")}
 get specialityItemsModal ()                { return $("//h4[text()='Specialty Items']")}
 get extrasBtn ()                           { return $("//button[@id='buttonOptionalExtras']")}
 get extrasModal ()                         { return $("//h4[text()='Extras']")}
 get adjustmentsBtn ()                      { return $("//button[@id='buttonAdjustments']")}
 get adjustmentsModal ()                    { return $("//h4[text()='Adjustments']")}
 get  requiredDesignFeaturesSearch ()       { return $("//button[@class='btn btn-info btn-sm cw_detail_search']")}
 get searchProductsModal ()                 { return $("//h4[text()='Search Products']")}	
 get commmunitiesCM ()                      { return $("//a[@href='/communitymanagement/community/list.aspx']")}
 get communitySetupPanel ()                 { return $("//h4[text()='Community Information:']")}
 get addNewContact ()                       { return $("//a[text()='Add New Contact']")}
 get newContactRow ()                       { return $("//select[@id='_ctl0_body_grdContacts__ctl5_cboContact']")}
 get buildersCM ()                          { return $("//a[@href='/communitymanagement/builder/list.aspx']")}
 get addNewCutOff ()                        { return $("//a[text()=' Add New Cutoff']")}
 get LSOCutOffPageHeading  ()               { return $("//span[text()='Lifestyle Options Cutoff Date Information - ']")}
 get LSOOpenBtn ()                          { return $("//a[@id='_ctl0_body_grdCutoffDates__ctl2_hypOpen']")}
 get productSetup ()                        { return $("//a[text()='Product Setup']")}
 get standardSetUp ()                       { return $("//a[text()='Standards Setup']")}
 get addProductBtn ()                       { return $("//button[text()='Add Product']")}
 get FlooringProdCatgry ()                  { return $("#flooring_products")}
 get CWProdCatgry ()                        { return $("#cw_products")}
 get standardEdgeTypesCategory ()           { return $("#edge_types")}
 get floorPlansCM ()                        { return $('//a[@href="/dm__floorplan_list.aspx"]')}
 get flooringGroupLinkCM ()                 { return $('//a[@href="/dm__group_editor.aspx?Is_Proposal=0"]')}
 get lifestyleOptionsCM ()                  { return $('//a[@href="/dm__option_list.aspx"]')}
 get viewOptionsBtn  ()                     { return $('//input[@value="View Options"]')}
 get homesiteSetup ()                       { return $('//a[@href="/dm__lot_list.aspx"]')}
 get copyUtilityCM ()                       { return $('//a[@href="/CommunityManagement/Community/Copy.aspx"]')}
 get flooringExtraRules ()                  { return $('//a[@href="/FlooringExtrasRulesList.aspx"]')}
 get changeplansTakeoffsModal ()            { return $("//h4[text()='Change Plans and Takeoffs']")}
 get changeplansTakeoffsBtn  ()             { return $("//input[@id='btnChangeAreaButton']")}
 get uploadNewLink ()                       { return $("//a[text()='Upload New']")}
 get uploadNewFPText ()                     { return $("//strong[text()=' Upload New Floor Plan Image']")}
 get updateDiagramLink ()                   { return $("//a[@id='_ctl0_body_repTracerDiagrams__ctl1_lnkUpdateDiagram']")}
 get importDiagrams ()                      { return $("//a[text()='Import Diagrams']")}
 get createDiagramLink ()                   { return $("//a[text()='Create Diagram']")}
 get copyBtn3 ()                            { return $("//a[text()=' Copy']")}
 get roomsLink ()                           { return $("//a[contains(text(), 'Rooms')]")}
 get addNewRoomBtn ()                       { return $("//a[text()=' Add New Room']")}
 get roomsTr ()                             { return $$('//table[@class="table"]//tr')}
 get flooringDDCM ()                        { return $("//a[@class='btn btn-orange btn-default btn-xs dropdown-toggle']")}
 get takeOffOption ()                       { return $("//a[text()='Take-Off']")}
 get allowanceComaparisonBtn ()             { return $("//button[text()='Allowance Comparison']")}
 get allowanceComparisonModal ()            { return $("//h4[text()='Allowance Comparison']")}
 get editRuleBtn ()                         { return $('//button[@title="Edit Rules"]')}
 get editRulesMoadl ()                      { return $("//h4[text()='Edit Takeoff Extras Rules']")}
 get addTakeOffBtn2 ()                      { return $('//a[text()=" Add Takeoff"]')}
 get takeOffTable ()                        { return $$('//tr[@class="takeoffRow"]')}
 get alterntRmconfigBtn ()                  { return $("//a[text()='Alternate Room Configurations']")}
 get controlOption ()                       { return $("//a[text()='Control']")}
 get windowTreatementsDD  ()                { return $("//button[text()='Window Treatments ']")}
 get importTemplateOption ()                { return $("//a[text()='Import Template']")}
 get importWindowTreatementTemplateModal () { return $("//h4[text()='Import Window Treatment Template']")}
 get CWDD ()                                { return $("//button[text()='Counter & Wall ']")}
 get structureOption ()                     { return $("//a[text()='Structure']")}
 get expandAllRooms ()                      { return $("//span[@id='showHideRooms']")}
 get copyCWArea ()                          { return $('//button[@class="btn btn-xs btn-default"]')}
 get copyAreaModal ()                       { return $("//h4[text()='Select A Room To Copy To']")} 
 get roomExpandIcon ()                      { return $("//span[@class='glyphicon glyphicon-chevron-down']")}
 get roomCollapseIcon ()                    { return $('//span[@class="glyphicon glyphicon-chevron-right"]')}
 get collapseRoomBtn ()                     { return $("//span[text()='Collapse All Rooms']")}
 get addNewRoomModal ()                     { return $("//h4[text()='Select A Room Name']")}
 get addNewRoomBtnCW ()                     { return $("//a[contains(text(),  'Add New Room')]")}
 get detailsOption ()                       { return $("//a[contains(text(),'Details')]")}
 get applyProducts ()                       { return $("//button[text()='Apply Products']")}
 get roomCollapseIcon2 ()                   { return $("//div[@class='col-md-6 pull-left']//div[2]//div[1]//div[1]//span[1]//span[1]")}
 get lsoEXportTable ()                      { return $('//td[@style="vertical-align:top;"]')}
 get closeBtn ()                            { return $("//span[text()='×']")}
 get historyBtn ()                          { return $("//a[text()=' History']")}
 get historyModal ()                        { return $('//table[@class="table dataTable no-footer"]')}
 getReportType(Report_Type) {
     return $("//a[@id='_ctl0__ctl0_body_body_"+Report_Type+"']")
 }
 getFloorGroupVal(groupVal) {
    return $('//div/strong[contains(text(),"Floor Group:")]/../following-sibling::div[1]/select//option[@value='+groupVal+']')
 }
 getSubscriberSettingsPageTab(SubscriberSettingsPageTab){ 
    return $('//a[text()="'+SubscriberSettingsPageTab+'"]')
}
getCommunityTab (CommunityTab){
    return $('//a[text()="'+CommunityTab+'"]')
}
getCommunityPanel (CommunityPanel) {
    return $('//h4[text()="'+CommunityPanel+'"]')
}
getCommunityPanel2 (CommunityPanel){
    return $('//strong[text()="'+CommunityPanel+'"]')
}
getCommunityPanel3 (CommunityPanel)  {
    return $('//a[text()="'+CommunityPanel+'"]')
}
getStandardSetupTabname  (tabname){
    return $('//a[@id="'+tabname+'"]')
}
getStndrdProdCtgry (Categories)  {
    return $('//div[@id="'+Categories+'"]')
}
getLSOOptions(link){
    return $('//a[@href="/dm__option_'+link+'.aspx"]')
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
    let isDisplayed = this.deleteButton.isDisplayed();
    if (isDisplayed == true){
        waitAndClick(this.deleteButton,  'Delete button Area Types');
    }
}
validateDeleteDefaultArea(){ 
    expectToBeDisplayed(this.deleteDefaultArea, "Delete Default Area pop up");
 }
 clickingOnAssignTakeOffs() {
     waitAndClick(this.assignTakeOffs, "Assign Take Offs");
     waitUntilElementIsDisabled(this.LoadingGif);
     pauseBrowser(10000);
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
    pauseBrowser(5000)
}
clickingOnNewPatternButtonInPatterns() { 
    waitAndClick(this.newPattern, "New pattern button");
}
valiadteEditPatternModalIsDisplayed() {
    expectToBeDisplayed(this.editpatternModal, " Edit pattern modal");
} 
validateAddPatternPopUpIsDisplayed(){
    expectToBeDisplayed(this.addPatternPopUp, "Add pattern pop up");
}
selectingAreaTypeInPatterns (){
    selectByTxt( this.areaTypeDD,this.getData()['areaType'], 'areaTypeDD');
    pauseBrowser(8000)
}
clckingOnEditBtnInSelectedPattern () {
    waitAndClick(this.editBtn3, "Edit button  in selected pattern");
}
clickingOnDisableBtnInPatterns () {
    pauseBrowser(8000)
    waitAndClick(this.disableButton2, "Disable button in  pattern");
}
clckingOnCopyButtonInPatterns () {
    waitAndClick(this.copyButton2, "Copy button in selected pattern")
}
validateCopyPatternModalIsDisplayed (){
    expectToBeDisplayed(this.copyPatternModal, "Copy pattern modal");
}
clickingOnHideLinkInPatternModal (pattern) {
    if (pattern == 'Edit_Pattern') {
        waitAndClick(this.hideEditPattern, " hide link Edit pattern");
    } else if ( pattern == 'Copy_Pattern') {
        waitAndClick(this.hideCopyPattern, " hide link copy pattern");
    } else if ( pattern == 'Disable_Pattern') {
        waitAndClick(this.hideDisableaPattern, " hide link disable pattern");
    }
}
clickingOnButtonsInPatterns (button) {
    if (button == 'Copy') {
        waitAndClick(this.copyButton2, "Copy button in selected pattern")
    } else if (button == 'Edit') {
        waitAndClick(this.editBtn3, "Edit button  in selected pattern");
    } else if (button == 'Disable')   {
        waitAndClick(this.disableButton2, "Disable button in selected pattern");
    }
}
validatePatternImgIsNotDisplayed () {
    expectNotToBeDisplayed(this.patternImg, '  pattern image');
}
validateUploadFieldIsDisplayedInThePatternEditorModal (){
    expectToBeDisplayed (this.fileUploadTxtBox, 'upload field in the edit pattern');
    let isClickable = this.fileUploadTxtBox.isClickable();
    allureReporter.addStep('upload field in the edit pattern is clickable>>>>'+isClickable);
    return true;
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
clickingOnDeleteBtnInAssignTakeOff (){
    waitAndClick(this.deleteButton2, "Delete button");
}
clickingOnTracerBtnInPatterns () {
    waitAndClick(this.tracerBtn, "Tracer button");
}
validateDeleteModalAT (){
    expectToBeDisplayed(this.deleteModalAT, "Delete Modal AT");
}
clickingOnPatternUpdateImg (){
    waitAndClick(this.patternUpdateImg, "Update pattern image");
}
validateDisablePatternModalIsDisplayed (){
    expectToBeDisplayed(this.disablePatternModal, "Disable pattern modal")
}
clickingOnAddNewTakeOffButton (){
    waitAndClick(this.addNewTakeOffButton, "Add new take off button");
}
validateNewWindowForEditingCWPatternTracerIsOpened (){
    switchToNextWindowArray();
    expectToHaveUrlContaining('https://qa.homedesignsystems.com/dm__cw_tracer');
    switchToPreviousWindow();
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
      pauseBrowser(15000);
  }
  validateSearchFilterProductsIsDisplayedForSN (){
      this.styleNumberColumnInTable.scrollIntoView();
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
      pauseBrowser(10000)
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
   clickingOnOpenButtonInInstallmethods()   {
       waitAndClick(this.openButton, 'open button');
   }
   clickingOnNewButtonInInstallMethods() {
       waitAndClick(this.newButton2, 'new button');
   }
   clickingOnViewButtonInInstallmethodsEDitorPage() {
       waitAndClick(this.viewButton, 'view button');
   }
   clickOnServiceOfferingInInstallMethods (ServiceOffering) {
        if (ServiceOffering == 'Counter & Wall'){
            waitAndClick(this.IMCounterAndWall, 'IM Counter And Wall')
        }else if (ServiceOffering == 'Flooring'){
            waitAndClick(this.IMFlooring,'IM Flooring ')
        }
   }
   clickingOnEditButtonInInstallMethodsForFlooring () {
       waitAndClick(this.editButton2, ' edit button');
   }
   validateInstallMethodPageDisplayedInEditMode () {
       expectToBeDisplayed( this.updateButton, 'Install Method Page  In Edit Mode');
   }
   clickingOnEditButtonInInstallMethodsForCW() {
       waitAndClick(this.editButton2, ' edit button');
   }
   clickingOnDeleteButtonInInstallMethodsForCW() {
       waitAndClick(this.deleteButton2, ' delete button');
   }
   validateConfirmationDialogIsDisplayed() {
    acceptAlert();
    allureReporter.addStep('alert/confirmation dialog is displayed');
}
   clickingOnDeleteButtonInInstallMethodsForFlooring() {
    waitAndClick(this.deleteButton2, ' delete button');
    pauseBrowser(5000)
}
clickingOnDCCommunities (){
    waitAndClick(this.DCCommunities, 'DC Communities')
}
clickingOnOpenButtonInDCCommunities (){
    waitAndClick(this.openButton2, ' open button');
}
clickingOnCommissionFormDC() {
    waitAndClick(this.commissionFormDC, 'commission Form DC')
}
clickingOnHomesiteSetupDC (){
    waitAndClick(this.homesiteSetupDC, 'homesite Setup DC')
}
clickingOnNewButtonInHomesites(){
    waitAndClick(this.newButton2, ' new button');
    pauseBrowser(7000)
}
valiadateUnsavedChangesIsDisplayed () {
    expectToBeDisplayed(this.unsavedChanges, ' unsaved changes');
}
clickingOnEditButtonInHomesites () {
    waitAndClick(this.editButton2, ' edit button');
    pauseBrowser(7000)
}
clickingOnBuyersDC () {
    waitAndClick(this.buyersDC, ' buyers DC');
}
clickingOnNewButtonInBuyerListPage () {
    waitAndClick(this.newButton2, ' new button');
}
setValueToSerchBoxBuyers(Buyer_Name, Community_Name) {
    sendKeys(this.serchBox, Buyer_Name, 'serch Box Buyers' );
    waitAndClick(this.searchGo, 'search Go');
    waitAndClick(this.openButton, 'open button');
}
clickingOnMonthlyPaymentButton(){
    this.monthlyPaymentButton.scrollIntoView();
    waitAndClick(this.monthlyPaymentButton, 'monthly payment button');
    switchToNewWindow('https://qa.homedesignsystems.com/dc__loan_values.aspx');
}
validateMonthlyPaymentWindowIsDisplayed () {
    expectToBeDisplayed( this.monthlyPaymentWindow, 'monthly payment window');
    switchToPreviousWindow();
}
clickingOnAddAdditionalBuyerButton() {
    this.addAdditionalBuyerButton.scrollIntoView();
    waitAndClick(this.addAdditionalBuyerButton, 'additional buyer button');
    }
clickingOnUpdateCostsButton(){
    this.updateCostsButton.scrollIntoView();
    waitAndClick(this.updateCostsButton, 'update costs button');
}
clickingOnUpdateCostsPopUpIsDisplayed() {
    expectToBeDisplayed(this.updateCostsPopUp, 'update cost popup')
}
clickingOnService_Offering (Service_Offering){
if(Service_Offering == 'Flooring') {
    this.viewQuoteButtonFlooring.scrollIntoView();
    waitAndClick(this.viewQuoteButtonFlooring, ' view quote button for flooring');
}else if(Service_Offering == 'Counter & Wall') {
    this.viewQuoteButtonCW.scrollIntoView();
    waitAndClick(this.viewQuoteButtonCW, ' view quote button for counter and wall');
}else if(Service_Offering == 'Lifestyle Options') {
    this.viewQuoteButtonLo.scrollIntoView();
    waitAndClick(this.viewQuoteButtonLo, ' view quote button for Lifestyle options');
}
}
clickingOnFirstTracerDiagram() {
    waitAndClick(this.firstTracerDiagram, ' first tracer  diagram');
    switchToNewWindow('https://qa.homedesignsystems.com/dc__floorplan_viewer.aspx?subscriberID=75&quoteid=502463&roomGraphID=152429');
    pauseBrowser(5000)
}
clickingOnCurrentQuoteLinkfor(Service_Offering) {
    if (Service_Offering == 'Flooring') {
        this.flooringQuoteLink.scrollIntoView();
        waitAndClick(this.flooringQuoteLink, 'flooring quote link')
    }else if (Service_Offering == 'Counter & Wall'){
        this.CWQuoteLink.scrollIntoView();
        waitAndClick(this.CWQuoteLink, 'CW quote link')
    }else if(Service_Offering == 'Lifestyle Options'){
        this.LOQuotedLink.scrollIntoView();
        waitAndClick(this.LOQuotedLink, 'LO quote link');
    }
}
clickingOnScenarioList(Service_Offering) {
    if (Service_Offering == 'Flooring') {
        this.scenarioListFl.scrollIntoView();
        waitAndClick(this.scenarioListFl, ' scenario list  flooring'); 
    } else if (Service_Offering == 'Counter & Wall'){
        this.scenarioListCW.scrollIntoView();
        waitAndClick(this.scenarioListCW, ' scenario list counter & wall');
    } else if (Service_Offering == 'Lifestyle Options'){
        this.scenarioListLo.scrollIntoView();
        waitAndClick(this.scenarioListLo, ' scenario list   lifestyle options');
    }
}
clickingOnNewButtonInFlooringScenarioList() {
    waitAndClick(this.newButton2, ' new button');
}
validateFlooringSelectorPage() {
    pauseBrowser(5000)
    this.FlSelectorPageHeading.scrollIntoView({block:"start"});
    expectToBeDisplayed(this.FlSelectorPageHeading, ' Fl Selector Page Heading');
}
clickingOnOpenButtonInActiveService_OfferingDS (){
    waitAndClick(this.openButton, ' open button');
    pauseBrowser(5000);
}
clickingOnSelectionsFl_DC() {
    waitAndClick(this.selectionsFl, ' selections fl');
}
clickingOnPrintPriliminaryQuoteBtn (Service_Offering) {
    if (Service_Offering == 'Counter & Wall'){
        waitAndClick(this.printPriliminaryQuoteBtnCW, ' print Priliminary Quote Btn for CW');
    }else{
    waitAndClick (this.printPriliminaryQuoteBtn, 'print  priliminary quote button'); 
    }
}
clickingOnCalculatorBreakdownReportButtonForFlooring () {
    waitAndClick( this.calculatorBreakdownReportButton, ' calculator Breakdown Report Button');
} 
clickingOnFirstTracerDiagramForBuyers() {
    waitAndClick(this.firstTracerDiagram, ' first tracer  diagram');
    switchToNewWindow('https://qa.homedesignsystems.com/dc__floorplan_viewer.aspx?subscriberID=75&fdsid=315159&roomGraphID=152429')
    pauseBrowser(5000)
}
clickingOnRoomLink(RoomName){
    if (RoomName == 'Whole House Carpet') {
    waitAndClick(this.wholeHouseCarpet, ' whole house carpet');
    } else if (RoomName  == 'diningroom') {
        waitAndClick(this.diningroomLink,  ' dining room Link');
    }
}
clickingOnTabInRoomEditor(Tab) {
    if (Tab == 'Additional Items') {
        waitAndClick(this.addlItemsTab, ' additional items  tab');
        pauseBrowser(5000);
    } else if (Tab == 'Adjustments') {
        waitAndClick(this.adjustmentsTab, ' adjustments tab');
        pauseBrowser(5000);
    } else if (Tab == 'Modify Flooring Selection') {
        waitAndClick(this.modifyFlooringSelectionTab, ' modify flooring selection tab');
        pauseBrowser(5000);
    } else if (Tab == 'Room Standards') {
        waitAndClick(this.roomStandardsTab, ' room standards tab');
        pauseBrowser(5000);
    }
    else if (Tab == 'Flooring Extras')  {
        waitAndClick(this.flooringExtrsaTab, ' flooring Extras tab');
        pauseBrowser(5000);
    }
}
validatePanelForTabIsDisplayed(Tab)  {
    if (Tab == 'Additional Items') {
        expectToBeDisplayed(this.addlItemsPanel, ' addl items panel');
    } else if (Tab == 'Adjustments') {
        expectToBeDisplayed(this.adjustmentListPanel, ' adjustment List Panel');
    } else if (Tab == 'Modify Flooring Selection') {
        expectToBeDisplayed(this.modifyFlooringSelectionPanel, ' modify Flooring Selection Panel');
    } else if (Tab == 'Room Standards') {
        expectToBeDisplayed(this.roomStandardsPanel, ' room Standards Panel');
    }
    else if (Tab == 'Flooring Extras')  {
        expectToBeDisplayed(this.flooringExtrasPanel, 'flooring Extras Panel');
    }
}
clickingOnAddNewItemBtn() {
    waitAndClick(this.addNewItemBtn, ' add new item   button');
}
validateAddlItemsEditorFieldIsDisplayed (){
    expectToBeDisplayed(this.addlItemsEditorField, 'addl items editor field');
}
clickingOnCancelButtonInAddlItemsTab () {
    waitAndClick(this.cancelButton2, 'cancel button');
}
validateAddlItemsEditorFieldIsNotDisplayed (){
    expectNotToBeDisplayed(this.addlItemsEditorField, 'addl items editor field');
}
clickingOnAddNewAdjustmentBtn (){
    waitAndClick(this.addNewAdjustmentBtn, 'add new adjustment button');
}
validateAdjustmentEditorFieldIsDisplayed (){
    expectToBeDisplayed(this.adjustmentEditorField, 'adjustment editor field');
}
clickingOnCancelBtnInAdjustments (){
    waitAndClick(this.cancelButton2, ' cancel button  in adjustments'); 
}
validateAdjustmentEditorFieldIsNotDisplayed (){
    expectNotToBeDisplayed(this.adjustmentEditorField, 'adjustment editor field');
}
clickingOnSelectFromProductListButton (){
    waitAndClick(this.selectFromProductListButton, ' select from product list');
}
validateProductSearchModalIsDisplayed (){
    expectToBeDisplayed (this.productSearchModal, 'product search  modal');
}
clickingOnGoButtonInRoomEditor(){
    waitAndClick(this.goButton, 'go button  in room editor');
}
clickingOnProductInProductSearchModal (){
    let text = this.productInProductSearchModal.getText();
    waitAndClick(this.productInProductSearchModal, 'product in product search modal');
    waitAndClick(this.applyBtn, 'apply button');
    pauseBrowser(10000);
    assertEquals(text, this.selectedProductLabel.getText());
    }
validateSelectedProductInTheFlooringRoomEditorPage  (){
    let text =  this.selectedProductLabel.getText();
    expect(text).to.beEqual(productName);
}
clckingOnCopyBtnInCWScenarioPage (){
    waitAndClick(this.copyButton, 'copy button in CW scenario');
}
validateCopyDesignScenario (){
    expectToBeDisplayed(this.copyDesignScenario, 'copy design scenario in CW')
}
clickingOnNewBtnInCWScenarioListPage (){
    waitAndClick(this.NewBtn3, 'New Btn in CW scenario');
}
valiadteCreateNewScenarioModalIsDisplayed (){
    expectToBeDisplayed(this.createNewScenario, 'Create new scenario in CW');
}
clickingOnViewLatestQuoteBtnInScenarioListPage(Service_Offering){
    if (Service_Offering == 'Lifestyle Options') {
        waitAndClick(this.viewLatestQuoteBtnInLO, 'View latest quote in Lifestyle Options')
    }else {
    waitAndClick(this.viewLatestQuoteBtn, 'view latest quote btn in   scenario list page');
        }
}
clickingOnViewQuoteHistoryButton(Service_Offering)   {
    if (Service_Offering == 'Lifestyle Options') {
        waitAndClick(this.viewQuoteHistoryLO, ' View quote  history in Lifestyle Options')
    } else if(Service_Offering == 'Counter & Wall')  {
        waitAndClick(this.viewQuoteHistoryCW, ' View quote history in Counter & Wall');
    } else if(Service_Offering == 'Flooring')  {
        waitAndClick(this.viewQuoteHistoryFl, ' View quote history in Flooring');
    }
}
validateQuoteHistoryDialogBox(Service_Offering) {
    if (Service_Offering == 'Flooring')  {
        expectToBeDisplayed( this.flooringQuoteHistory, 'flooring Quote History');
    } else if (Service_Offering == 'Counter & Wall') {
        expectToBeDisplayed( this.CWQuoteHistory, 'counter wall Quote History')
    } else if (Service_Offering == 'Lifestyle Options')  {
        expectToBeDisplayed( this. LOQuoteHistory, 'LO Quote History');
    }
}
clickingOnReportTypeInReportsPage(Report_Type) {
    waitAndClick(this.getReportType(Report_Type), Report_Type);
}
clickingOnQuoteHistoryDialogBox() { 
    waitAndClick(this.viewButton2,'view button');
}
clickingOnStandardAreaCW (){
    waitAndClick (this.standardArea, 'standard area CW');
    pauseBrowser(5000);
}
clickingOnChangeLayoutBtn (){
    waitAndClick (this.changeLayoutBtn, 'change layout button')
}
validateChangeLayoutModalIsDisplayed (){
    expectToBeDisplayed (this.changeLayoutModal, 'change layout modal')
}
 clickingOnSelectGroutBtn  () {
     waitAndClick (this.selectGroutBtn, 'select grout button')
 }
 validateSelectGroutModalIsDisplayed () { 
     expectToBeDisplayed (this.selectGroutModal, 'select grout modal');
 }
 clickingOnOptionalDesignFeatureBtn () {
     waitAndClick (this.optionalDesignFeatureBtn, 'optional design feature  button')
 }
 validateOptionalDesignFeaturesModal (){
     expectToBeDisplayed (this.optionalDesignFeaturesModal, 'optional design feature modal');
 }
 clickingOnSpecialityItemsBtn (){
     waitAndClick (this.specialityItemsBtn, 'speciality items  button');
 }
 validateSpecialityItemsModalIsDisplayed (){
    expectToBeDisplayed (this.specialityItemsModal, 'speciality items modal');
 }
 clickingOnExtrasBtn () {
     waitAndClick(this.extrasBtn, 'extras button');
 }   
 validateExtrasModalIsDisplayed () {
     expectToBeDisplayed (this.extrasModal, '  Extras modal');
 }
 clickingOnAdjustmentsBtn  (){
     waitAndClick(this.adjustmentsBtn, 'adjustments button');
 } 
 validateAdjustmentsModalIsDisplayed () {
     expectToBeDisplayed (this.adjustmentsModal, ' adjustments modal');
 }  
 clickingOnRequiredDesignFeaturesSearch () {
     waitAndClick(this.requiredDesignFeaturesSearch, 'required design features search');
 } 
 validateSearchProductsModalIsDisplayed () {
     expectToBeDisplayed (this.searchProductsModal, ' search products modal');
 }
 clickingOnCommmunitiesCMLink () {
     waitAndClick (this.commmunitiesCM, ' commmunities link in CM');
 }
 setValueToCommunitiesSearchBox (Community_Name) {
     sendKeys (this.serchBox, Community_Name, Community_Name);
     waitAndClick(this.searchGo, ' search go');
     waitAndClick (this.openButton2, ' open button');
 }
 clickingOnCommunityTab (CommunityTab) {
    waitAndClick (this.getCommunityTab(CommunityTab), CommunityTab);
    pauseBrowser(5000)
 }
 validatePanelForCommunityTabIsDisplayed(CommunityPanel, CommunityTab){
    if(CommunityTab == 'Community Setup') {
        expectToBeDisplayed(this.getCommunityPanel(CommunityPanel), CommunityPanel)
    } else if(CommunityTab == 'Report Setup') {
        expectToBeDisplayed(this.getCommunityPanel(CommunityPanel), CommunityPanel)
    }else if(CommunityTab == 'Email Setup') {
        expectToBeDisplayed(this.getCommunityPanel(CommunityPanel), CommunityPanel)
    }
    else if(CommunityTab == 'Calculation Setup') {
        expectToBeDisplayed(this.getCommunityPanel2(CommunityPanel), CommunityPanel)
    }else if(CommunityTab == 'Contact Setup') {
        expectToBeDisplayed(this.getCommunityPanel3(CommunityPanel), CommunityPanel)
    }else if(CommunityTab == 'Service Offerings') {
        expectToBeDisplayed(this.getCommunityPanel2(CommunityPanel), CommunityPanel)
    }
 }
 clickingOnAddNewContactLink () {
     waitAndClick (this.addNewContact, 'Add New Contact link')
 }
 validateNewRowAddedInContactSetup () {
     expectToBeDisplayed(this.newContactRow, 'New Contact row');
 }
 clickingOnBuildersCM () {
     waitAndClick (this.buildersCM, 'Builders CM link')
 }
 clickingOnFirstBuildersCM () {
     waitAndClick (this.openButton2, ' open button')
 }
 clickingOnnewBtnInCM () {
     waitAndClick (this.newButton2, ' new button')
 }
 clickingOnAddNewCutOffBtn (){
     waitAndClick (this.addNewCutOff, ' add new cut off  button')
 }
 validateLSOCutOffPageHeadingIsDisplayed (){
     expectToBeDisplayed(this.LSOCutOffPageHeading, 'LSOCutOff page heading');
 }
 clickingOnOpenBtnInLSOCutOffPage(){
    this.LSOOpenBtn.scrollIntoView();
    waitAndClick (this.LSOOpenBtn, ' open button  in LSO CutOff page');
 }
 clickingOnProductSetupLinkCM () {
     this.productSetup.scrollIntoView();
     waitAndClick (this.productSetup, ' product setup link');
 }
 clickingOnOpenBtnInCommunityProductSetupListPage () {
     waitAndClick (this.openButton2, ' open button in Community product setup list page');
     pauseBrowser(5000);
 }
 clickingOnStandardSetupLinkCM  (){
     this.standardSetUp.scrollIntoView();
     waitAndClick(this.standardSetUp, ' standard SetUp');
     pauseBrowser(5000)
 }
 clickingOnEditBtnInStandardProducts  (){
     waitAndClick (this.editButton, ' edit button in Community Standards setup list page');
 }
 clickingOnAddProductBtnInStandardProducts (){
     waitAndClick (this.addProductBtn, ' add product button in  Community Standards setup');
 }
 clickingOnTabCommunityStandardSetupPage(tabname){
     waitAndClick (this.getStandardSetupTabname(tabname), tabname);
 }
 validateCatgryCommunityStandardSetupPageIsDisplayed (Categories){
    expectToBeDisplayed(this.getStndrdProdCtgry (Categories), Categories);
 }
 clickingOnFloorPlansCM() {
     this.floorPlansCM.scrollIntoView();
     waitAndClick( this.floorPlansCM, ' floor plans  CM')
 }
 clickingOnFlooringGroupLinkCM (){
     this.flooringGroupLinkCM.scrollIntoView();
     waitAndClick (this.flooringGroupLinkCM, ' flooring group link CM');
 }
 clickingOnLifestyleOptionsLinkCM (){
     this.lifestyleOptionsCM.scrollIntoView();
     waitAndClick (this.lifestyleOptionsCM, 'lifestyle options link CM');
 }
 clickingOnOpenBtnInLSOCommunityPage(){
     waitAndClick (this.openButton2, 'open button in LSO Community page');
 }
 clickingOnNewBtnInCommunityLSOPage(){
     waitAndClick (this.newButton2, 'new button in Community LSO  page')
 }
 clickingOnLSOOptions(link){
     this.getLSOOptions(link).scrollIntoView();
     waitAndClick (this.getLSOOptions(link), link);
 }
clickingOnHomesiteSetupLinkCM (){
    this.homesiteSetup.scrollIntoView();
    waitAndClick (this.homesiteSetup, 'homesite setup link');
}
clickingOnEditButtonInHomesiteSetupPageCM (){
    waitAndClick (this.editButton2, 'edit button in homesite setup page');
}
clickingOnNewBtnInHomesiteSetupCM (){
    waitAndClick (this.newButton2, 'new button in homesite');
    pauseBrowser(5000)
}
clickingOnCopyUtilityCM () {
    waitAndClick (this.copyUtilityCM, '  copying utility');
}
clickingOnFlooringExtraRules () {
    waitAndClick (this.flooringExtraRules, 'flooring extra rules')
}
clickingOnNewBtnInFlooringExtraRules () {
    waitAndClick (this.newButton2, 'new button in flooring extra rules');
    pauseBrowser(5000)
}
clickingOnOpenBtnFlooringExtraRules  () {
    waitAndClick (this.openButton2, 'open button in flooring extra rules');
    pauseBrowser(10000)
}
clickingOnChangeplansTakeoffsBtn (){
    waitAndClick(this.changeplansTakeoffsBtn, 'changeplans takeoffs Button');
}
validateChangeplansTakeoffsModalIsDisplayed  () {
    expectToBeDisplayed (this.changeplansTakeoffsModal, '  changing takeoffs modal');
}
clickingOnNewBtnInFloorPlans () {
    waitAndClick (this.newButton2, ' new button in floor plans');
}
clickingOnEditBtnInFloorPlans () {
    waitAndClick (this.editBtn4, ' edit button in floor plans')
}
clickingOnUploadNewLink (){
    waitAndClick (this.uploadNewLink, ' upload new link');
}
validateNewWindowForUploadingTracerDiagramIsDisplayed (){
    switchToNextWindowArray();
    expectToHaveUrlContaining('https://qa.homedesignsystems.com/dm__upload_floorplan_image.aspx');
    browser.quit();
}
clickingOnUpdateDiagramLink (){
    waitAndClick (this.updateDiagramLink, ' update diagram link');
}
clickingOnImportDiagrams () {
    waitAndClick (this.importDiagrams, ' import diagram');
}
validateNewWindowForImportingTracerDiagrams (){
    switchToNextWindowArray();
    expectToHaveUrlContaining('https://qa.homedesignsystems.com/dm__import_floorplan_diagrams');
    switchToPreviousWindow();
}
clickingOnEditLinkFloorPlanListpage (){
    waitAndClick (this.editBtn4, ' edit floor plan list page');
}
validateTracerDiagramEditorWindowIsDisplayed (){
    switchToNextWindowArray();
    expectToHaveUrlContaining('https://qa.homedesignsystems.com/dm__floorplan_tracer.aspx');
    switchToPreviousWindow();
}
clickingOnCreateDiagramLink  () {
    waitAndClick(this.createDiagramLink, 'create Diagram Link');
}
clickingOnCopyBtnInFloorPlanListPage () {
    waitAndClick(this.copyBtn3, 'copy Btn  in Floor Plan List Page');
}
clickingOnRoomsLink () {
    waitAndClick(this.roomsLink, '  rooms Link');
}
clickingOnAddNewRoom () {
    let rows = this.roomsTr.length;
    console.log('==========rows>>>>'+rows);
    waitAndClick(this.addNewRoomBtn, 'add New Room Button');
    pauseBrowser(5000);
    if (this.roomsTr.length == rows+1) {
        console.log('==========rows+1>>>>', rows+1);
        return true;
    }
}
validateNewRowIsAddedInRoomEditorPage  () {
   if (this.clickingOnAddNewRoom() == true) {
       allureReporter.addStep('New Row Is Added In Room Editor Page'+", "+true+ " ,"+ "passed");
   } else {
        allureReporter.addStep('New Row Is Added In Room Editor Page'+", "+false+ ", "+ "failed");
   }
}
clickingOnTakeOffOptionInTheFlooringDD (){
    waitAndClick(this.flooringDDCM, 'flooring DD Options');
    pauseBrowser(2000);
    waitAndClick(this.takeOffOption, 'take off option');
    pauseBrowser(5000);
}
clickingOnAllowanceComaparisonBtn(){
    waitAndClick(this.allowanceComaparisonBtn, 'allowance comparision btn');
}
validateAllowanceComparisonModalIsDisplayed   () {
    expectToBeDisplayed (this.allowanceComparisonModal, 'allowance comparision modal');
}
clickingOnEditRuleBtn () {
    waitAndClick(this.editRuleBtn, 'edit rule button');
}
validateEditRulesMoadlIsDisplayed () {
    expectToBeDisplayed (this.editRulesMoadl, '  Edit rules modal');
}
clickingOnAddTakeOffBtn () {
    let trSize = this.takeOffTable.length;
    console.log ('=====trSize is==========',trSize);
    waitAndClick(this.addTakeOffBtn2, 'add take off  button');
    pauseBrowser(5000);
    if(this.takeOffTable.length == trSize+1) {
        console.log ('=====trSize+1 is==========',trSize+1);
        return true;
    }
}
validateNewRowIsAddedToTheTakeoffTable (){
   if (this.clickingOnAddTakeOffBtn() == true) {
    allureReporter.addStep('New Row Is Added To The Takeoff Table'+" , "+true+", " +'passed');
   } else {
    allureReporter.addStep('New Row Is Added To The Takeoff Table'+", "+false+", "+ 'failed');
   }
}
clickingOnAlterntRmconfigBtn  () {
    waitAndClick(this.alterntRmconfigBtn, 'alter config button');
}
clickingOnControlOptionInFlooringDD () {
    waitAndClick(this.flooringDDCM, 'flooring DD Options');
    pauseBrowser(2000);
    waitAndClick (this.controlOption, 'control option in flooring  DD');
    pauseBrowser (5000);
}
clickingOnImportTemplateOption (){
    waitAndClick(this.windowTreatementsDD, 'window Treatements DD');
    pauseBrowser(2000)
    waitAndClick(this.importTemplateOption, 'import template option');
    pauseBrowser (5000);
}
validateImportWindowTreatementTemplateModalIsDisplayed() {
    expectToBeDisplayed(this.importWindowTreatementTemplateModal, 'import template  modal');
}
clickingOnStructureOptionCWDD () {
    waitAndClick(this.CWDD, 'CWDD');
    pauseBrowser(2000)
    waitAndClick(this.structureOption, 'structure option in CWDD');
    pauseBrowser (5000);
}
clickingOnExpandAllRoomsBtn () {
    waitAndClick(this.expandAllRooms, ' expand All Rooms button');
}
clickingOnCopyBtnAreaInCWStructre (){
    waitAndClick(this.copyCWArea, 'Copy CW area in CW structure');
    waitAndClick(this.closeBtn, ' close btn');
}
validateCopyAreaModalIsDisplayed (){
    expectToBeDisplayed(this.copyAreaModal, 'copy Area Modal');
}
validateAllTheRoomsAreExpanded (){
    expectToBeDisplayed (this.roomExpandIcon, 'All room Expand Icons')
}
clickingOnCollapseRoomBtn (){
    waitAndClick (this.collapseRoomBtn, 'collapse Room button')
}
validateAllTheRoomsAreCollapsed (){
    expectToBeDisplayed (this.roomCollapseIcon, 'All Rooms collapse Icons')
}
clickingOnAddNewRoomBtnCWStrucutrePage (){
    waitAndClick (this.addNewRoomBtnCW, 'add New Room button in CW   Strucutre page')
}
validateAddNewRoomModalIsDisplayed (){
    expectToBeDisplayed (this.addNewRoomModal, '  Add New Room Modal');
}
clickingOnDetailsOptionCWDropdown (){
    waitAndClick (this.CWDD, ' CW DD');
    pauseBrowser(2000);
    waitAndClick (this.detailsOption, 'details option in CWDD');
    pauseBrowser(3000)
}
validateAllRoomsexpandedInCWDetails (){
    expectToBeDisplayed(this.applyProducts, 'Apply Products')
}
validateAllTheRoomsAreCollapsedDetails (){
    expectToBeDisplayed (this.roomCollapseIcon2, 'All Rooms collapse Icons in details')
}
clickingOnViewOptionsBtnInLSOPage(link){
    waitAndClick (this.viewOptionsBtn, '  view options button in LSO"'+link+'"  page');
} 
validateOptionsTableIsDisplayedInLSOPage(link){
    expectToBeDisplayed(this.lsoEXportTable, 'options table in LSO "'+link+'" page');
}
clickingOnHistoryBtnProductSetupProductEditorPage (){
    waitAndClick (this.historyBtn, ' history button in product  setup product editor page');
}
validateHistoryModalProductSetupPage (){
    expectToBeDisplayed(this.historyModal, 'history modal in product setup product editor page');
}
getData(){ 
    return super.testDataJson(CATALOG_DATA_FILE_NAME);
    }

}
export default new HomePage();