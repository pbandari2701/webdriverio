
# @BVT_ClickThrough @tfs:https://isidev.visualstudio.com/Apps
# Feature: BVT_Click_Through_Tests
	
# Background: Pre Login as HDS Admin
#     Given I am logged in to HDS as a Admin


# ##SECURITY MENU======================================================
@test
Feature: BVT Click Through Functionality of HDS application

    Feature Description "This feature validate the Business Critical Functionality of the HDS Application"

Background: Pre Login as HDS Admin
    Given I am logged in to HDS as a Admin

	
@tc:2054 @clickthrough @bvt 
Scenario: Verify HDS Home Page
	Then HDS Home page is displayed


@tc:2055 @clickthrough @bvt
Scenario: Verify_Security_Manage_Users_page  
	Given HDS Home page is displayed
	When Manage User link under Security Menu is clicked
	Then Manage Users page is loaded

	
# # Manage Users - New
@tc:2056 @clickthrough @bvt
Scenario: Verify_Security_User_Editor_Page_for_New_User
	Given HDS Home page is displayed
		And  Manage User link under Security Menu is clicked
	When the New button is clicked in the Manage Users list page
	Then  the User editor page is loaded
	

@clickthrough @bvt @test
Scenario: Verify_Security_Users_New_ERP_Linked_bttn
	Given HDS Home page is displayed
		And  Manage User link under Security Menu is clicked
	When the New ERP Linked button is clicked in the Manage Users list page
	Then  The ERP Designer Search modal is displayed


# 	# Manage Users - Open

@tc:2057 @clickthrough @bvt
Scenario: Verify_Security_User_Editor_Page_for_existing_User  
	Given HDS Home page is displayed
		And  Manage User link under Security Menu is clicked
	When the Open button is clicked for the first user listed in the Manage users list page
    Then  the User editor page is loaded

# ##SITE ADMINISTRATION MENU======================================================

@tc:2058 @clickthrough
Scenario: Verify_Site_Admin_Area_Types_page  
	Given HDS Home page is displayed
	When  Area Types link under Site Administration Menu is clicked
	Then  Area Typespage is loaded


#Area Types-New
@tc:2059
Scenario: Verify_Site_Admin_Area_Types_New
	Given HDS Home page is displayed
		And Area Types link under Site Administration Menu is clicked
	When the New button is clicked in the site-level Area Type page
	Then the modal for creating new Area type is displayed in the site-level Area Type page


#Area Types-Edit
@tc:2060
Scenario: Verify_Site_Admin_Area_Types_Edit
	Given HDS Home page is displayed
		And Area Types link under Site Administration Menu is clicked
	When the Edit button is clicked for a randomly selected AreaType in the site-level Area Type page
	Then the Area Type editor Modal is displayed in the site-level Area Type page


#Area Types-Disable
@tc:2061
Scenario: Verify_Site_Admin_Area_Types_disable
	Given HDS Home page is displayed
		And Area Types link under Site Administration Menu is clicked
	When the Disable button is clicked for a randomly selected AreaType in the site-level Area Type page
	Then the modal for disabling an Area type is displayed in the site-level Area Type page


#Area Types-Delete
@tc:2062 @wip
Scenario: Verify_Site_Admin_Area_Types_delete
	Given HDS Home page is displayed
		And Area Types link under Site Administration Menu is clicked
	When the Delete button is clicked for a randomly selected AreaType in the site-level Area Type page
	Then the modal for deleting an Area type is displayed in the site-level Area Type page


@tc:2063
Scenario: Verify_Site_Admin_Assign_Take_Off_page  
	Given HDS Home page is displayed
	When  Assign Take Offs page link under Site Administration Menu is clicked
	Then  Assign Take Offs page is loaded


#Assign Take Off--Missing Quantities Report
@tc:2064
Scenario: Verify_Site_Admin_Assign_Take_Off_Missing_Qty's_Rprt_link
	Given HDS Home page is displayed
	When the Missing Quantities Report link in the Site Admin menu is clicked
	Then the Report Viewer page loaded

#Assign Take Offs-Edit
@tc:2065
Scenario: Verify_Site_Admin_Assign_Take_Off_page_edit_bttn
	Given HDS Home page is displayed
		And  Assign Take Offs page link under Site Administration Menu is clicked
	When the Edit button is clicked for a randomly selected Takeoff in the site-level Assign Take Offs list page
	Then the take Off editor Modal is displayed in the site-level Assign Take Offs list page


# #Assign Take Offs-Delete
# @tc:2066
# Scenario: Verify_Site_Admin_Assign_Take_Off_page_delete_bttn
# 	Given HDS Home page is displayed
# 		And  Assign Take Offs page link under Site Administration Menu is clicked
# 	When the Delete button is clicked for a randomly selected Takeoff in the site-level Assign Take Offs list page
# 	Then the Modal for deleteing a take off is displayed in the site-level Assign Take Offs list page



#Assign Take Offs-Disable 
@tc:2067
Scenario: Verify_Site_Admin_Assign_Take_Off_page_disable_bttn
	Given HDS Home page is displayed
		And  Assign Take Offs page link under Site Administration Menu is clicked
	When the Disable button is clicked for a randomly selected Takeoff in the site-level Assign Take Offs list page
	Then the Modal for disabling a take off is displayed in the site-level Assign Take Offs list page



#Assign Take Offs-Add Take Off 
@tc:2068
Scenario: Verify_Site_Admin_Assign_Take_Off_page_add_TakeOff_bttn
	Given HDS Home page is displayed
		And  Assign Take Offs page link under Site Administration Menu is clicked
	When the Add take off button is clicked for a randomly selected Area Type in the site-level Assign Take Offs list page
	Then the Modal for adding a take off is displayed in the site-level Assign Take Offs list page

@tc:2069
Scenario: Verify_Site_Admin_Patterns_page  
	Given HDS Home page is displayed
	When  Patterns link under Site Administration Menu is clicked
	Then  Patterns page is loaded 

@tc:2070
Scenario: Verify_Site_Admin_Patterns_New_Pattern_bttn  
	Given HDS Home page is displayed
		And Patterns link under Site Administration Menu is clicked
	When the New Pattern button is clicked in the site-level Patterns list page
	Then the New Pattern Modal is displayed in the site-level patterns list page

@tc:2071
Scenario: Verify_Site_Admin_Patterns_Edit_bttn
	Given HDS Home page is displayed
		And Patterns link under Site Administration Menu is clicked
		And Area Type Selected
	When the Edit button is clicked for a randomly selected Pattern in the site-level Pattern page
	Then the pattern editor Modal is displayed in the site-level patterns list page

# Scenario: Verify_Site_Admin_Patterns_Copy_bttn
# 	Given HDS Home page is displayed
# 		And Patterns link under Site Administration Menu is clicked
# 		And Area Type Selected 
# 	When the Copy button is clicked for a randomly selected Pattern in the site-level Patterns list page
# 	Then the Copy Pattern Modal is displayed in the site-level patterns list page


# Scenario Outline: Verify_Site_Admin_Patterns_Modals_hide_image
# 	Given HDS Home page is displayed
# 		And Patterns link under Site Administration Menu is clicked
# 		And Area Type Selected 
# 		And the <button> is clicked for a randomly selected Pattern in the site-level Patterns list page
# 	When the hide link is clicked clicked in the modal displayed in the site-level Patterns page 
# 	Then the pattern image in <this_> modal is not displayed
# Examples: 
# 		| button  | this_           |
# 		| Copy    | Copy_Pattern    |
# 		| Edit    | Edit_Pattern    |
# 		| Disable | Disable_Pattern |



# Scenario: Verify_Site_Admin_Patterns_Edit_uploadNew Image
# 	Given HDS Home page is displayed
# 		And Patterns link under Site Administration Menu is clicked
# 		And Area Type Selected 
# 		And the Edit button is clicked for a randomly selected Pattern in the site-level Pattern page
# 	When the image is clicked in the Pattern Editor modal 
# 	Then file upload field is displayed in the Pattern editor modal

# @tc:2072
# Scenario: Verify_Site_Admin_Patterns_Disable_bttn  
# 	Given HDS Home page is displayed
# 		And Patterns link under Site Administration Menu is clicked
# 		And Area Type Selected
# 	When the Disable button is clicked for a randomly selected Pattern in the site-level Patterns list page
# 	Then the Disable Pattern Modal is displayed in the site-level patterns list page

# @tc:2073
# Scenario: Verify_Site_Admin_Patterns_Add_New_TO_bttn  
# 	Given HDS Home page is displayed
# 		And Patterns link under Site Administration Menu is clicked
# 		And Area Type Selected
# 	When the Add New TakeOff button is clicked for a randomly selected Pattern in the site-level Patterns list page
# 	Then the Add New TakeOff Modal is displayed in the site-level patterns list page
@2074
# Scenario: 04 Verify_Site_Admin_Patterns_Tracer_bttn
# 	Given HDS Home page is displayed
# 		And Patterns link under Site Administration Menu is clicked
# 		And Area Type Selected 
# 	When the 'Tracer' button is clicked for a randomly selected Pattern in the site-level Patterns list page
# 	Then A new window for editing CW Pattern tracer is opened from the Site-Admin Patterns page. 

@tc:2075
Scenario: Verify_Tagging_Prod_Categories_page  
	Given HDS Home page is displayed
	When  Tagging Product Categories page link under Site Administration Menu is clicked
	Then  Tagging Product Categories page is loaded

@tc:2076
Scenario: Verify_Buyer_Types_page  
	Given HDS Home page is displayed
	When  Buyer Types Page link under Site Administration Menu is clicked
	Then  Buyer Types Page is loaded 

#Buyer Types - New
#46
@tc:2077
Scenario: Verify_Buyer_Types_page_New_bttn 
	Given HDS Home page is displayed
		And Buyer Types Page link under Site Administration Menu is clicked
	When the New button is clicked in the Buyer Type list page
	Then the Buyer type editor page under Site Admin menu is loaded


#Buyer Types - Edit
#47
@tc:2078
Scenario: Verify_Buyer_Types_page_Open
	Given HDS Home page is displayed
		And Buyer Types Page link under Site Administration Menu is clicked
    When the Open button is clicked for a randomly selected Buyer type in the Buyer Types list page
	Then the Buyer type editor page under Site Admin menu is loaded

@tc:2079
Scenario: Verify_Admin_Category_Svc_Offering_listPage  
	Given HDS Home page is displayed
	When  Category Service Offering page link under Administration Menu is clicked
	Then  Category Service Offering page is loaded 

#Category Svc Offerings - New
#50
@tc:2080
Scenario: Verify_Admin_Category_Svc_Offering_New_bttn  
	Given HDS Home page is displayed
		And Category Service Offering page link under Administration Menu is clicked
	When the New button is clicked in the Category Service Offering list page
	Then the Category Service Offering editor page is loaded

#Category Svc Offerings  - Edit
#51
@tc:2081
Scenario: Verify_Admin_Category_Svc_Offering_Open  
	Given HDS Home page is displayed
		And Category Service Offering page link under Administration Menu is clicked
	When the Open button is clicked for a randomly selected Category in the Category Service Offering list page
	Then the Category Service Offering editor page is loaded
           
# ##ADMINISTRATION MENU======================================================
@tc:2082
Scenario: Verify_Admin_Subscriber_Settings_page  
	Given HDS Home page is displayed
	When  Subscriber Settings page link under Administration Menu is clicked
	Then  Subscriber Settings page is loaded

@tc:2083
#Subscriber Settings - Company setup - Flooring DD (max IM wast factore)
#Subscriber Settings - Company setup - CW DD (max IM wast factore)
Scenario Outline: Verify_Admin_Subscriber_Settings_page_MaxIM waste factor drop down bttn
	Given HDS Home page is displayed
		And Subscriber Settings page link under Administration Menu is clicked
	When the <Service_Offering> drop down for maximum install Method waste factor is clicked in the company setup tab of subscriber settings page
	Then a drop down for showing max install Method waste factor is displayed for <Service_Offering> service offering is displayed in the Subscriber Settings page

Examples: 
| Service_Offering |
| Flooring         |
| Counter and Wall |



#Subscriber Settings - Company setup
#Subscriber Settings - Repot setup - 
#Subscriber Settings - Email setup - 
#Subscriber Settings - Available Patterns- 

@tc:2084
Scenario Outline: Verify_Admin_Subscriber_Settings_page_tabs
	Given HDS Home page is displayed
		And Subscriber Settings page link under Administration Menu is clicked
	When the <SubscriberSettingsPageTab> tab is clicked in the Subscriber Settings page
	Then the panel for <SubscriberSettingsPageTab> tab is displayed in the Subscriber Settings page

Examples: 
| SubscriberSettingsPageTab |
| Company Setup             |
| Global Settings           |
| Report Setup              |
| Features                  |
| ERP                       |


@tc:2085
Scenario: Verify_Pattern_Availability_page   
	Given HDS Home page is displayed
	When  Pattern Availability page link under Administration Menu is clicked
	Then  Pattern Availability page is loaded

@tc:2086
Scenario: Verify_Admin_Flooring_Groups_listpage  
	Given HDS Home page is displayed
	When  Flooring Groups page link under Administration Menu is clicked
	Then  Flooring Groups page is loaded 

#Flooring Groups - New 
@tc:2087
Scenario: Verify_Admin_Flooring_Groups_New_Bttn
	Given HDS Home page is displayed
		And Flooring Groups page link under Administration Menu is clicked
	When the New button is clicked in the in the Flooring Groups list page under Administration Menu
	Then the Flooring Groups editor page is loaded


#Flooring Groups - Open
@tc:2088
Scenario: Verify_Admin_Flooring_Groups_pg_Open
	Given HDS Home page is displayed
		And Flooring Groups page link under Administration Menu is clicked
	When the Open button is clicked for a randomly selected group in the flooring group list page
	Then the Flooring Groups editor page is loaded

@tc:2089
#Flooring Groups - Open - View History
Scenario: Verify_Admin_Flooring_Groups_Open_View_history
	Given HDS Home page is displayed
		And Flooring Groups page link under Administration Menu is clicked
		And the Open button is clicked for a randomly selected group in the flooring group list page
	When the 'view' button is clicked in the Flooring Group Editor page under Administration menu
	Then the view history page for the flooring group is loaded

@tc:2090
Scenario: Verify_Diagram_Colors_page  
	Given HDS Home page is displayed
	When  Diagram Colors page link under Administration Menu is clicked
	Then  Diagram Colors page is loaded

@tc:2091
Scenario: Verify_Admin_About_page  
	Given HDS Home page is displayed
	When  About page link under Administration Menu is clicked
	Then  About page is loaded 

@tc:2092
Scenario Outline: Verify_Admin_Design_Extras
	Given HDS Home page is displayed
	When  Design Extras page link under Administration Menu is clicked for <ServiceOffering> service offering
	Then  Design Extras page is loaded
Examples: 
| ServiceOffering |
| Flooring        |
| Counter & Wall  |

@tc:2093
#Design Extras - Open
# 66
Scenario Outline: Verify_Admin_Design_Extras_Open
	Given HDS Home page is displayed
		And  Design Extras page link under Administration Menu is clicked for <ServiceOffering> service offering
	When the Open button is clicked for a randomly selected design Extra in the subscriber Design Extra list page
	Then the design extra editor panel is displayed in the subscriber design extra page
Examples:
| ServiceOffering |
| Counter & Wall  |

#Design Extras - New
#68
@tc:2094
Scenario Outline: Verify_Admin_Design_Extras_New
	Given HDS Home page is displayed
		And  Design Extras page link under Administration Menu is clicked for <ServiceOffering> service offering
	When the New button is clicked in the subscriber Design Extra list page
	Then the design extra editor panel is displayed in the subscriber design extra page
Examples:
| ServiceOffering |
| Counter & Wall  |


#Design Extras - Open - Product Search 
#67
@tc:2095
Scenario Outline: Verify_Admin_Design_Extras_Open_ProdSearch_Modal 
	Given HDS Home page is displayed
		And  Design Extras page link under Administration Menu is clicked for Counter and Wall service offering
		And the Open button is clicked for a randomly selected design Extra in the subscriber Design Extra list page
	# When the product search button is clicked in the design Extra page 
	# Then the Design Extra Item Selector Modal is displayed in the subscriber design extra page

#Design Extras - Open - Cancel 
#69
@tc:2096
Scenario: Verify_Admin_Design_Extras_Open_Cancel_bttn
	Given HDS Home page is displayed
		And  Design Extras page link under Administration Menu is clicked for <ServiceOffering> service offering
		And the Open button is clicked for a randomly selected design Extra in the subscriber Design Extra list page
	When the Cancel button is clicked in the design Extra page
	Then the design extra editor panel is no longer displayed in the subscriber design extra page
Examples:
| ServiceOffering |
| Counter & Wall  |

@tc:2097
Scenario: Verify_Admin_Tagging_Install_Methods_page  
	Given HDS Home page is displayed
	When  Tagging Install Methods page link under Administration Menu is clicked
	Then  Tagging Install Methods page is loaded

@tc:2098
Scenario: Verify_Admin_Audit_Report_page  
	Given HDS Home page is displayed
	When  Audit Report page link under Administration Menu is clicked
	Then  Admin Audit Report page is loaded 


# ##ACCOUNTING======================================================
@tc:2099
Scenario: Verify_Accounting_Complete_Qoute_Buyers_page  
	Given HDS Home page is displayed
	When  Complete Quote or Buyers page link under Accounting Menu is clicked
	Then  Complete Quote or Buyers page is loaded

@tc:2100
Scenario: Verify_Accounting_Set_Cut_Off_Dates_page  
	Given HDS Home page is displayed
	When  Set Cut Off Dates page link under Accounting Menu is clicked
	Then  Set Cut Off Dates page is loaded 


@tc:2101
#Commission Forms  16
Scenario: Verify_Accounting_CommissionForms_list page 
	Given HDS Home page is displayed
	When  Commission Forms page link under Accounting Menu is clicked
	Then  the Commission Forms list page under Accounting menu is loaded

@tc:2102
#Commission Forms - Open 18
Scenario: Verify_Accounting_CommissionForms_Open (editor) 
	Given HDS Home page is displayed
		And  Commission Forms page link under Accounting Menu is clicked
	When the Open button for the first Commission form  listed in the commission forms list page is clicked
	Then  the Commission Form detail page under Accounting menu is loaded 

# ##PRODUCT MANAGEMENT========================================================

#Product Management - Catalogs
Scenario: Verify_Prod_Mgmt_Catalogs_page  
	Given HDS Home page is displayed
	When  Catalogs page link under Product Management Menu is clicked
	Then  Catalogs page is loaded 

#Product Management - Catalogs - Edit
Scenario: Verify_Prod_Mgmt_Catalogs_page_Edit_catalog  
	Given HDS Home page is displayed
		And Catalogs page link under Product Management Menu is clicked
	When the Edit button for the first catalog listed is clicked
	Then  Excluded Offering text element is displayed

# #Product Management - Catalogs - Show Products
# Scenario: Verify_Prod_Mgmt_Catalogs_page_showProducts  
# 	Given HDS Home page is displayed
# 		And Catalogs page link under Product Management Menu is clicked
# 	When the Show Products button for the first catalog listed is clicked
# 	Then Product List page is loaded

# #Product Management - Catalogs - New
# Scenario: Verify_Prod_Mgmt_Catalogs_page_New_catalog  
# 	Given HDS Home page is displayed
# 		And Catalogs page link under Product Management Menu is clicked
# 	When new button is clicked in the Catalog list page
# 	Then  the catalog drop down field is displayed


# # Product Management Product list 
# Scenario: Verify_Prod_Mgmt_Product_List_page  
# 	Given HDS Home page is displayed
# 	When  Product List page link under Product Management Menu is clicked
# 	Then  Product List page is loaded 


# #Product list - Import 
# #137
# Scenario: Verify_Prod_Mgmt_Product_List_Import
# 	Given HDS Home page is displayed
# 		And  Product List page link under Product Management Menu is clicked
# 	When the Import button in the Product list page is clicked
# 	Then Subscriber Catalog Import page is loaded 


# #Product list - Open 
# #81
# Scenario: Verify_Prod_Mgmt_Product_Editor_page 
# 	Given HDS Home page is displayed
# 		And  Product List page link under Product Management Menu is clicked
# 	When the Open button for the first product listed in the Product list page is clicked
# 	Then  Product Editor page is loaded 


# #Product list - Open - Open communities
# #82
# Scenario: Verify_Prod_Mgmt_Product_Editor_OpenComms
# 	Given HDS Home page is displayed
# 		And  Product List page link under Product Management Menu is clicked
# 		And the Open button for the first product listed in the Product list page is clicked
# #	When the 'Open Communities' link is clicked in the Product Editor page
# #	Then Communities page of the Community Management Menu is loaded


# #Product list - Open - Any Open  Buyer Scenario
# #83
# Scenario: Verify_Prod_Mgmt_Product_Editor_OpenAnyBuyerScenario
# 	Given HDS Home page is displayed
# 		And  Product List page link under Product Management Menu is clicked
# 		And the Open button for the first product listed in the Product list page is clicked
# #	When the 'Any Open Buyer Scenarios' link is clicked in the Product Editor page
# #	Then the Buyers' list page is loaded


# #Product list - Open - Open Buyer Active Scenario 
# #85
# Scenario: Verify_Prod_Mgmt_Product_Editor_OpenBuyerActiveScenarios
# 	Given HDS Home page is displayed
# 		And  Product List page link under Product Management Menu is clicked
# 		And the Open button for the first product listed in the Product list page is clicked
# #	When the 'Open Buyer Active Scenarios' link is clicked in the Product Editor page#
# #	Then the Buyers' list page is loaded

# # 86 Global HDS Catalog Search - HDS 
# Scenario: Verify_Global_HDS_Catalog_Search  
# 	Given HDS Home page is displayed
# 	When  Global HDS Catalog Search List page link under Product Management Menu is clicked
# 	Then  Global HDS Catalog Search List page is loaded 

# Scenario: Verify_Global_HDS_Catalog_Search_for_SAPNumber
# 	Given HDS Home page is displayed
# 	When Global HDS Catalog Search Tab page link under Product Management Menu is clicked
# 	Then Global HDS Catalog Search List page is loaded
# 	And  Write * on SAP Number textbox and Searched
# 	And verify the search filter products according to the given keyword
# 	And click on Export Button to export the product to the spreadsheet 
# 	#05EE
# Scenario: Verify_Global_HDS_Catalog_Search_for_Style_Number
# 	Given HDS Home page is displayed
# 	When Global HDS Catalog Search List page link under Product Management Menu is clicked
# 	Then Global HDS Catalog Search List page is loaded
# 	And  Write F70ACCE on Style Number textbox and Searched
# 	And verify the search filter products according to the given keyword
# 	#F70ACCE
# Scenario: Verify_Global_HDS_Catalog_Search_for_Style_Type
# 	Given HDS Home page is displayed
# 	When Global HDS Catalog Search List page link under Product Management Menu is clicked
# 	Then Global HDS Catalog Search List page is loaded
# 	And  Write COMMERCIAL LEVEL CUT LOOP on Style Type textbox and Searched
# 	And verify the search filter products according to the given keyword

# Scenario: Verify_Global_HDS_Catalog_Search_for_Sales_Description
# 	Given HDS Home page is displayed
# 	When Global HDS Catalog Search List page link under Product Management Menu is clicked
# 	Then Global HDS Catalog Search List page is loaded
# 	And  Write THRESHOLD  on Sales Description textbox and Searched
# 	#THRESHOLD
# Scenario: Verify_Global_HDS_Catalog_Search_for_Style_Name
# 	Given HDS Home page is displayed
# 	When Global HDS Catalog Search List page link under Product Management Menu is clicked
# 	Then Global HDS Catalog Search List page is loaded
# 	And  Write ante on Style Name textbox and Searched

# Scenario: Verify_Global_HDS_Catalog_Search_for_Vendor
# 	Given HDS Home page is displayed
# 	When Global HDS Catalog Search List page link under Product Management Menu is clicked
# 	Then Global HDS Catalog Search List page is loaded
# 	And  Write ARIZONA TILE LLC (11067) on Vendor textbox and Searched

# Scenario: Verify_Global_HDS_Catalog_Search_for_ILG_Number
# 	Given HDS Home page is displayed
# 	When Global HDS Catalog Search List page link under Product Management Menu is clicked
# 	Then Global HDS Catalog Search List page is loaded
# 	And  Write ILG-1001-10040 on ILG Number textbox and Searched

# Scenario: Verify_Global_HDS_Catalog_Search_for_Product_Category
# 	Given HDS Home page is displayed
# 	When Global HDS Catalog Search List page link under Product Management Menu is clicked
# 	Then Global HDS Catalog Search List page is loaded
# 	And  Write hardwood on Product Category textbox and Searched

# Scenario: Verify_Global_HDS_Catalog_Search_for_Color_Name
# 	Given HDS Home page is displayed
# 	When Global HDS Catalog Search List page link under Product Management Menu is clicked
# 	Then Global HDS Catalog Search List page is loaded
# 	#Then  Write TOUR  on Color Name textbox and Searched

# #Product Type list
# #88
# Scenario: Verify_Prod_Mgmt_Product_Types_List_page  
# 	Given HDS Home page is displayed
# 	When  Product Types list page link under Product Management Menu is clicked
# 	Then  Product Types list page is loaded 
 
# #Product Type - Open
# #89
# Scenario: Verify_Prod_Mgmt_Product_Types_Editor_page  
# 	Given HDS Home page is displayed
# 		And Product Types list page link under Product Management Menu is clicked
# 	When the Open button for the first product type In the product types list page is clicked
# 	Then  Product Types Editor page is loaded



# #Install Methods - Open 
# #93

# #Install Methods - New 
# #94

# #Install Methods - Open -  View history
# #96

# #Product Type - New
# #90
# 	Scenario: Verify_Prod_Mgmt_Product_Types_List_page_New 
# 	Given HDS Home page is displayed
# 		And Product Types list page link under Product Management Menu is clicked
# 	When the New button in the Product Type list page is clicked
# 	Then  Product Types Editor page is loaded


# Scenario: Verify_Prod_Mgmt_Install_Methods_page  
# 	Given HDS Home page is displayed
# 	When  Install Methods page link under Product Management Menu is clicked
# 	Then  Install Methods list page is loaded 



# #Install Methods - Open 
# #93
# Scenario: Verify_Prod_Mgmt_Install_Methods_Editor_Page 
# 	Given HDS Home page is displayed
# 		And Install Methods page link under Product Management Menu is clicked
# 	When the Open button for the first Install method is clicked in the Install methods page
# 	Then the install Methods Editor page is loaded
	
# #Install Methods - New 
# #94
# Scenario: Verify_Prod_Mgmt_Install_Methods_page_New 
# 	Given HDS Home page is displayed
# 		And Install Methods page link under Product Management Menu is clicked
# 	When the New button is clicked in the Install Methods list page
# 	Then the install Methods Editor page is loaded

# #Install Methods - Open -  View history		
# #96
# Scenario: Verify_Prod_Mgmt_Install_Methods_Editor_ViewHistory
# 	Given HDS Home page is displayed
# 		And Install Methods page link under Product Management Menu is clicked
# 		And the Open button for the first Install method is clicked in the Install methods page
# 	When the View button is clicked in the Install Method Editor page
# 	Then the Install Method History page is loaded



# Scenario Outline: Verify_Prod_Mgmt_Install_Methods_Group_pages
# 	Given HDS Home page is displayed
# 	When  the <ServiceOffering> Install Methods Group link under Product Management Menu is clicked
# 	Then  the <ServiceOffering> Install Methods Group page is loaded 
# Examples: 
# | ServiceOffering |
# | Flooring        |
# | Counter and Wall|


# Scenario Outline: Verify_Prod_Mgmt_Install_Methods_Group_pg_Edit_bttn_FL 
# 	Given HDS Home page is displayed
# 		And  the <ServiceOffering> Install Methods Group link under Product Management Menu is clicked
# 	When the Edit button is clicked for a randomly selected Install Method Group in the Install Method group page
# 	Then  the selected install method group displays in edit mode in the in the Install Method group page Second 
# Examples: 
# | ServiceOffering |
# | Flooring        |


# Scenario Outline: Verify_Prod_Mgmt_Install_Methods_Group_pg_Edit_bttn  
# 	Given HDS Home page is displayed
# 		And  the <ServiceOffering> Install Methods Group link under Product Management Menu is clicked
# 	When the Edit button is clicked for a randomly selected Install Method Group in the Install Method group page for CW
# 	Then  the selected install method group displays in edit mode in the in the Install Method group page
# Examples: 
# | ServiceOffering |
# | Counter and Wall|

# Scenario Outline: Verify_Prod_Mgmt_Install_Methods_Group_pg_delete_bttn_CW  
# 	Given HDS Home page is displayed
# 		And  the <ServiceOffering> Install Methods Group link under Product Management Menu is clicked
# 	When the Delete button is clicked for a randomly selected Install Method Group in the Install Method group page for CW
# 	Then a confirmation dialog or alert is displayed in the Install Method group page 
# Examples: 
# | ServiceOffering |
# | Counter and Wall|

# Scenario Outline: Verify_Prod_Mgmt_Install_Methods_Group_pg_delete_bttn_Flooring
# 	Given HDS Home page is displayed
# 		And  the <ServiceOffering> Install Methods Group link under Product Management Menu is clicked
# 	When the Delete button is clicked for a randomly selected Install Method Group in the Install Method group page
# 	Then a confirmation dialog or alert is displayed in the Install Method group page
# Examples: 
# | ServiceOffering |
# | Flooring        |

# ##==================COMMUNITY MANAGEMENT====================================





# #=====================DESIGN CENTER=======================================
# Scenario: Verify_DC_Communities_page  
# 	Given HDS Home page is displayed
# 	When  Communities page link under Design Center Menu is clicked
# 	Then  Communities page of the Design Center Menu is loaded

# #Communities - Open
# Scenario: Verify_DC_Communities_page_Open  
# 	Given HDS Home page is displayed
# 		And Communities page link under Design Center Menu is clicked
# 	When the open button is clicked for Bella Fiore-25522250000 Community in the Design Center Communities list page
# 	Then the design center community home page is loaded

# #Commission Forms  18
# Scenario: Verify_DC_CommissionForm page 
# 	Given HDS Home page is displayed
# 	When  Commission Forms page link under Design Center Menu is clicked
# 	Then  the design center Commission Form page is loaded 




# #Communities - Open - Home Sites
# Scenario: Verify_DC_Communities_page_Open_Homesites_list_page
# 	Given HDS Home page is displayed
# 		And Communities page link under Design Center Menu is clicked
# 		And the open button is clicked for Bella Fiore-25522250000 Community in the Design Center Communities list page
# 	When the Homesite setup link is clikced in the design center community home page
# 	Then the Homesite list page for the  design center community is loaded


# #Communities - Open - Home Sites - New
# Scenario: Verify_DC_Communities_page_Open_Homesites_New_bttn
# 	Given HDS Home page is displayed
# 		And Communities page link under Design Center Menu is clicked
# 		And the open button is clicked for Bella Fiore-25522250000 Community in the Design Center Communities list page
# 		And the Homesite setup link is clikced in the design center community home page
# 	When the New button is clikced in the design center Community Homesite list page
# 	Then the Homesite editor/information page for the design center community homesite is loaded
# 	Then ignore Homesite unsaved alert message 

# #Communities - Open - Home Sites - Open
# Scenario: Verify_DC_Communities_page_Open_Homesites_editor_page
# 	Given HDS Home page is displayed
# 		And Communities page link under Design Center Menu is clicked
# 		And the open button is clicked for Bella Fiore-25522250000 Community in the Design Center Communities list page
# 		And the Homesite setup link is clikced in the design center community home page
# 	When the Edit button is clikced for a randomly selected homesite in the design center Community Homesite list page
# 	Then the Homesite editor/information page for the design center community homesite is loaded


# Scenario: Verify_DC_Buyers_page  
# 	Given HDS Home page is displayed
# 	When  Buyers page link under Design Center Menu is clicked
# 	Then  the Buyers' list page is loaded


# #Buyers -  New 
# #190
# Scenario: Verify_DC_Buyers_page_New_bttn
# 	Given HDS Home page is displayed
# 		And Buyers page link under Design Center Menu is clicked
# 	When the New button is clicked in the Buyers List Page
# 	Then  The buyer's info page loaded 

# Scenario Outline:  Verify_DC_Buyers_Info_Page
# 	Given HDS Home page is displayed
# 	And Buyer's list page is opened
# 	When A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 	Then  The buyer's info page loaded 
# Examples: 
#  | Buyer_Name   | Community_Name |
#  |Automation101 | Bella Fiore-25522250000 |


#  Scenario Outline:  Verify_DC_Buyers_Info_Page_EstMoPmt_bttn
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 	When the Estimate Monthly Payment button is clicked in the Buyer's Info page
# 	Then a new window for displaying the buyer's monthly payment is loaded 
# Examples: 
#  | Buyer_Name   | Community_Name |
#  |Automation101 | Bella Fiore-25522250000 |



#  Scenario Outline:  Verify_DC_Buyers_Info_Page_Additional_Buyer_info_Bttn
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 	When the Add Additional Buyer button is clicked in the Buyer info Page
# 	Then the Additional Buyer Info page is loaded 
# Examples: 
#  | Buyer_Name   | Community_Name |
#  |Automation101 | Bella Fiore-25522250000 |


# #Buyers - Open - Update Costs
# #206
# Scenario Outline:  Verify_DC_Buyers_UPdateCost
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 	When the Update Costs button under Counter and Wall Serivce offering is clicked in the Buyer's info page
# 	Then the Update Costs modal is dislayed in the buyer's info page
# Examples: 
#  | Buyer_Name   | Community_Name |
#  |Automation101 | Bella Fiore-25522250000 |


# #Buyers - Open - View Quote (flooring)
# #Buyers - Open - View Quote (CW)
# #Buyers - Open - View Quote (LSO)
# Scenario Outline:  Verify_DC_BuyerInfo_viewQT_bttn
# 	Given HDS Home page is displayed
# 	And Buyer's list page is opened
# 	And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 	When the view Quote Button is clicked for <Service_Offering> service offering in the buyer info page
# 	Then The Buyers Report page is loaded
# Examples: 
#  | Service_Offering | Buyer_Name   | Community_Name          |
#  | Flooring         | Automation101| Bella Fiore-25522250000 |
#  | Counter and Wall | Automation101| Bella Fiore-25522250000 | 
#  | Lifestyle Options| Automation101| Bella Fiore-25522250000 | 


# Scenario: Verify_DC_Buyers_Open_viewQT_flooring_Tracer Diagram link
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: Bella Fiore-25522250000,Automation101
# 		And the view Quote Button is clicked for Flooring service offering in the buyer info page
#     When the link for the first tracer diagram listed is clicked in the Buyer Report page
# 	#Then A new window for displaying tracer diagram selected from Buyer Report page is loaded



#  #|Flooring | Jia Zhuan | Bella Fiore-25522250000  |

# #Buyers - Open - (Current Quote) - [Flooring] 200
# #Buyers - Open - (Current Quote) - CW  137
# #Buyers - Open - (Current Quote) - LSO  170
#  Scenario Outline:  Verify_DC_BuyerInfo_current Quotes
# 	Given HDS Home page is displayed
# 	And Buyer's list page is opened
# 	And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 	When the Current Quote link for <Service_Offering> service offering is clicked in the buyer info page
# 	Then The Buyers Report page is loaded
# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name		    |
#  |Flooring			| Automation101	| Bella Fiore-25522250000   |
#  | Counter and Wall | Automation101 | Bella Fiore-25522250000	| 
#  | Lifestyle Options| Automation101 | Bella Fiore-25522250000    | 

# #Buyers - Open - Flooring - 
# #  Buyers - Open - CW
# #  Buyers - Open - Lifestyle Options

# Scenario Outline:  Verify_DC_Buyers_Open_SvcOfferingPg
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 	When the link for the <Service_Offering> scenario list or Options selector page is clicked
# 	Then the <Service_Offering> scenario list or Options selector page loaded
# Examples: 
#  | Service_Offering  | Buyer_Name		 | Community_Name            |
#  | Flooring          | Automation101     | Bella Fiore-25522250000 |
#  | Counter and Wall  | Automation101	 | Bella Fiore-25522250000	 |
#  | Lifestyle Options | Automation101     | Bella Fiore-25522250000   |



# #Buyers - Open - Flooring - New
# #207
#  Scenario Outline:  Verify_DC_Buyers_Open_Flooring_New
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 	 When the 'New' button is clicked in the Flooring scenario list page
# 	 Then the flooring selector page is displayed
# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name          |
#  | Flooring         | Automation101 | Bella Fiore-25522250000 |


#   Scenario Outline:  Verify_DC_Buyers_Open_Flooring_selection_link
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And User Navigates to The Buyer's Report page
# 	#When user clicks on the Selections link under the Flooring link in the Design Center Menu
# 	#Then the flooring selector page is displayed

	 
# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name          |
#  | Flooring         | Automation101 | Bella Fiore-25522250000 |

# #  Buyers - Open - Flooring - Open -  Print prelim Quote
# #215
# #  Buyers - Open - CW - Open -  Print prelim Quote
# #  Buyers - Open - LifestyleOptions -  Print prelim Quote
# Scenario Outline:  Verify_DC_Buyers_Open_SvcOfferingPg_PrintPrelim
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 	 When the Print preliminary Qoute button in the design scenario or option selector page is clicked for <Service_Offering>
# 	 Then The Buyers Report page is loaded
# Examples: 
#  | Service_Offering | Buyer_Name   | Community_Name           |
#  | Flooring         |Automation101 | Bella Fiore-25522250000  |
#  |Counter and Wall  |Automation101 | Bella Fiore-25522250000  |
#  |Lifestyle Options |Automation101 | Bella Fiore-25522250000  |


#   #Buyers - Open - Flooring - Open - Print
#   #209 
#  Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_CW_CalcBrdReport
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 	 And the Calculator Breakdown Report button is clicked in the Buyer's flooring selector page for Flooring
# #	 Then the <Service_Offering> Selector Reports page is loaded
# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name          | 
#  | Flooring         | Automation101 | Bella Fiore-25522250000 | 


# #Buyers - Open - Flooring - Open - Print - calc. brkdn rprt
# #212
#  Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_CalcBrkdReport_link
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And the Calculator Breakdown Report button is clicked in the Buyer's flooring selector page for Flooring
# 	 When User Clicks on the Calculator Breakdown Report Link for <Service_Offering> 
# 	# Then the Report Viewer page of the buyer is loaded
# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name          | 
#  | Flooring         | Automation101 | Bella Fiore-25522250000 | 



# #Buyers - Open - Flooring - Open - Print - room by room selctor report
# #210
#  Scenario Outline:  Verify_DC_Buyers_Open_CW_Open_Print_room by room Slctr report
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And the Calculator Breakdown Report button is clicked in the Buyer's flooring selector page
# 	# When User Clicks on the Room by Room Selector Report link
# 	# Then the Report Viewer page of the buyer is loaded
# Examples: 
#  | Service_Offering | Buyer_Name     | Community_Name         | 
#  | Counter          | Automation101  |Bella Fiore-25522250000 | 

#   Scenario:  Verify_DC_Buyers_Open_Flooring_Open_TracerDiagram link
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: Bella Fiore-25522250000,Automation101
# 		And the link for the Flooring scenario list or Options selector page is clicked
# 		And The active Flooring design scenario is opened if Svc Offering is Flooring or CW
#     When the link for the first diagram listed is clicked in the Buyer's flooring selector page
# 	Then A new window for displaying tracer diagram selected from Buyer's flooring selector page is loaded


#  #Buyers - Open - Flooring - Open - Open (Room) 
#  Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor 
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		When the link for the room named <RoomName> is clicked in the Flooring Selector page
# 	 Then the flooring room editor page is displayed
# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name             | RoomName           |
#  | Flooring         | Automation101 | Bella Fiore-25522250000    | Whole House Carpet |


# #Buyers - Open - Flooring - Open - Open (Room) - Modify Flooring Selection
# #Buyers - Open - Flooring - Open - Open (Room) - Additional Items
# #Buyers - Open - Flooring - Open - Open (Room) - Room Standards
# #Buyers - Open - Flooring - Open - Open (Room) - Adjustments
# #Buyers - Open - Flooring - Open - Open (Room) - Flooring Extras
 
#  Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_Tabs
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And flooring Room Editor page for the room named <RoomName> is opened
# 	 When the <Tab> tab is clicked in the flooring room editor page
# 	 Then the panel for the <Tab> is displayed in the flooring room editor page
# Examples: 
# | Tab                       | Service_Offering | Buyer_Name    | Community_Name          | RoomName |
# | Modify Flooring Selection | Flooring         | Automation101 | Bella Fiore-25522250000 | livingroom  |
# | Additional Items          | Flooring         | Automation101 | Bella Fiore-25522250000 | livingroom  |
# | Room Standards            | Flooring         | Automation101 | Bella Fiore-25522250000 | livingroom  |
# | Adjustments               | Flooring         | Automation101 | Bella Fiore-25522250000 | livingroom  |
# | Flooring Extras           | Flooring         | Automation101 | Bella Fiore-25522250000 | livingroom  |

#  Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_Add New Additional items button
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And flooring Room Editor page for the room named <RoomName> is opened
# 		And the <Tab> tab is clicked in the flooring room editor page
# 	 When the Add New Item button is clicked in the Additional Items tab of the flooring room editor page
# 	 Then the Additional Items Editor field is displayed in the flooring room editor page

# Examples: 
# | Tab                       | Service_Offering | Buyer_Name    | Community_Name          | RoomName			  |
# | Additional Items          | Flooring         | Automation101 | Bella Fiore-25522250000 | Whole House Carpet |




#  Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_Add New Additional items_Cancel button
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And flooring Room Editor page for the room named <RoomName> is opened
# 		And the <Tab> tab is clicked in the flooring room editor page
# 		And the Add New Item button is clicked in the Additional Items tab of the flooring room editor page
# 	 When the Cancel button is clicked in the Additional Items tab of the flooring room editor page
# 	 Then the Additional Items Editor field is not displayed in the flooring room editor page

# Examples: 
# | Tab                       | Service_Offering | Buyer_Name    | Community_Name          | RoomName			  |
# | Additional Items          | Flooring         | Automation101 | Bella Fiore-25522250000 | Whole House Carpet |



#  Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_Add Adjustments button
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And flooring Room Editor page for the room named <RoomName> is opened
# 		And the <Tab> tab is clicked in the flooring room editor page
# 	 When the Add New Adjustment button is clicked in the Adjustments tab of the flooring room editor page
# 	 Then the Adjustment Editor field is displayed in the flooring room editor page

# Examples: 
# | Tab         | Service_Offering | Buyer_Name    | Community_Name          | RoomName         |
# | Adjustments | Flooring         | Automation101 | Bella Fiore-25522250000 |Whole House Carpet|



# #
#  Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_Add New Adjustment_Cancel button
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And flooring Room Editor page for the room named <RoomName> is opened
# 		And the <Tab> tab is clicked in the flooring room editor page
# 		And the Add New Adjustment button is clicked in the Adjustments tab of the flooring room editor page
# 	 When the Cancel button is clicked in the Adjustments tab of the flooring room editor page
# 	 Then the Adjustments Editor field is not displayed in the flooring room editor page

# Examples: 
# | Tab         | Service_Offering | Buyer_Name    | Community_Name          | RoomName			|
# | Adjustments | Flooring         | Automation101 | Bella Fiore-25522250000 | Whole House Carpet |

#  #Buyers - Open - Flooring - Open - Open (Room) - - Select From Prod List (prod search)
#   Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_selectFromProdlist
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And flooring Room Editor page for the room named <RoomName> is opened
# 	 When the 'Select From Product List' button is clicked in the flooring room editor page
# 	 Then the Product search modal in the flooring room editor page is displayed
# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name             | RoomName           |
#  | Flooring         | Automation101 | Bella Fiore-25522250000    | Whole House Carpet |


#  # Buyers - Open - Flooring - Open - Open (Room) - - search product (go button)
#    Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_QuickProdSearchBttn
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And flooring Room Editor page for the room named <RoomName> is opened
# 	 When the 'Go' button for quick product search is clicked in the flooring room editor page
# 	 Then the Product search modal in the flooring room editor page is displayed
# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name             | RoomName           |
#  | Flooring         | Automation101 | Bella Fiore-25522250000    | Whole House Carpet |


# # Buyers - Open - Flooring - Open - Open (Room) - - search product (go button) - select product
#    Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_QuickPrdSearch_addProd
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And flooring Room Editor page for the room named <RoomName> is opened
# 		And the 'Go' button for quick product search is clicked in the flooring room editor page
# 	 When A product is randmoly selected for upgrade in the the flooring room editor product search modal
# 	 Then the product for the room is changed to the selected product in the flooring room editor page
# Examples: 
#  | Service_Offering | Buyer_Name   | Community_Name          | RoomName           |
#  | Flooring         | Automation101| Bella Fiore-25522250000 | Whole House Carpet |



# # Buyers - Open - CW - Open
# # Buyers - Open - Flooring - Open


# Scenario Outline:  Verify_DC_SvcOffring_Open_a_Scenario
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 	When The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 	Then The active <Service_Offering> design scenario page is opened
		
# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name	    	|
#  | Flooring         | Automation101 | Bella Fiore-25522250000   |
#  | Counter and Wall | Automation101 | Bella Fiore-25522250000	|


#  #143
# Scenario:  Verify_DC_Buyers_Open_CW_overviewPage_Copy modal
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: Bella Fiore-25522250000,Automation101
# 		And the link for the Counter and Wall scenario list or Options selector page is clicked
# 		And The active Counter and Wall design scenario is opened if Svc Offering is Flooring or CW
# 	When the 'Copy' button is clicked in the CW scenario overview page
# 	Then a modal for copying the design scenario is displayed in the CW scenario overview page

# #  Buyers - Open - CW- New
# #Note: has an order 0 Afterscenario step associated in 'BVT_tests'

# Scenario Outline:  Verify_DC_Buyers_Open_CW_NewScenario
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 	When the 'New' button is clicked in the Counter and Wall scenario list page
# 	Then the 'Create New Scenario' modal is displayed in the Counter and Wall Scenario list page

# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name          | 
#  | Counter and Wall | Automation101 | Bella Fiore-25522250000 | 



# # Buyers - Open - CW- view latest quote
# # Buyers - Open - Lifestyle Options - View latest quote
# # Buyers - Open - Flooring - View Latest Quote

#  Scenario Outline:  Verify_DC_Buyers_Open_SvcOff_ViewLatestQt
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 	When the 'View Latest Quote' button is clicked in the <Service_Offering> scenario list/option selector page
# 	Then The Buyers Report page is loaded

# Examples: 
#  | Service_Offering  | Buyer_Name    | Community_Name          |
#  | Flooring          | Automation101 | Bella Fiore-25522250000 |
#  | Counter and Wall  | Automation101 | Bella Fiore-25522250000 |
#  | Lifestyle Options | Automation101  |Bella Fiore-25522250000 | 





# #Buyers - Open - View Quote History (flooring)
# #Buyers - Open - View Quote History (cw)
# #Buyers - Open - View Quote History (lifestyle options)


#  Scenario Outline:  Verify_DC_Buyers_Open_SvcOff_ViewQtHistory
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 	When the 'View Quote History' button is clicked in the buyer info page for <Service_Offering> service offering
# 	Then the Quote History dialog box for <Service_Offering> service offering is displayed in the Buyer info page

# Examples: 
#  | Service_Offering  | Buyer_Name      | Community_Name          |
#  | Flooring          | Automation101   | Bella Fiore-25522250000 |
#  | Counter and Wall  | Automation101   | Bella Fiore-25522250000 |
#  | Lifestyle Options | Automation101   | Bella Fiore-25522250000 | 

 
# #Buyers - Open - View Quote History -view Link (flooring)
# #Buyers - Open - View Quote History -view Link (cw)
# #Buyers - Open - View Quote History -view Link (lifestyle options)
#  Scenario Outline:  Verify_DC_Buyers_Open_SvcOff_ViewQtHistory_View Link
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the 'View Quote History' button is clicked in the buyer info page for <Service_Offering> service offering
# #	When the 'View' link is clicked in Quote History dialog box for the first quote listed in the  Buyer info page
# #	Then The Buyers Report page is loaded

# Examples: 
#  | Service_Offering  | Buyer_Name| Community_Name          |
#  | Flooring          | Automation101  | Bella Fiore-25522250000 |
#  | Counter and Wall  | Automation101  | Bella Fiore-25522250000 |
#  | Lifestyle Options | Automation101  | Bella Fiore-25522250000 | 

# #   Buyers - Open - CW - Open -  Show Quotability status

#  Scenario Outline:  Verify_DC_Buyers_Open_CW_Open_ShowQtabilityStatus
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And an inactive <Service_Offering> scenario is opened
# 	When the 'Show Quotability Status' button is clicked in the CW Scenario Overview page
# 	Then One or more quotability comments are displayed in the CW Scenario Overview page
# 		And the 'Hide Quotability Status' button is displayed in the CW Scenario Overview page
# 	#And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW

# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name          | 
#  | Counter and Wall | Automation101 | Bella Fiore-25522250000 | 
 


#  #Buyers - Open - CW - Open -  Hide Quotability status 

#  Scenario Outline:  Verify_DC_Buyers_Open_CW_Open_HideQtabilityStatus
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And an inactive <Service_Offering> scenario is opened
# 	    And the 'Show Quotability Status' button is clicked in the CW Scenario Overview page
# 	When the 'Hide Quotability Status' button is clicked  in the CW Scenario Overview page
# 	Then Quotability comments are not displayed in the CW Scenario Overview page
# 		And  the 'Show Quotability Status' button is displayed in the CW Scenario Overview page
# 	#And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW

# Examples: 
#  | Service_Offering | Buyer_Name    | Community_Name          | 
#  | Counter and Wall | Automation101 | Bella Fiore-25522250000 |



# #  Buyers - Open - Reports 

#   Scenario Outline:  Verify_DC_Buyers_Open_reports_Page
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 	When User Navigates to The Buyer's Report page 
# 	Then the Buyer's report page loads successfully
# Examples: 
# | Buyer_Name   | Community_Name             | 
# | Automation101 | Bella Fiore-25522250000 |


#  #Buyers - Open - Reports - Options Details (Preliminary)
#  #Buyers - Open - Reports - Flooring Selector (Preliminary)
#  #Buyers - Open - Reports - Design Summary Buyer (Preliminary)
#   Scenario Outline:  Verify_DC_Buyers_Open_reports_report_links
# 	Given HDS Home page is displayed
# 		And Buyer's list page is opened
# 		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
# 		And User Navigates to The Buyer's Report page 
# 	When the <Report_Type> link is cliked in the buyer's report page
# 	Then the <Expected_Page> page of the selected <Report_Type> of the Buyer is loaded
# Examples: 
# | Report_Type                                   | Expected_Page                        | Community_Name				   | Buyer_Name   |
# #| Option Details_Preliminary                    | Report Viewer                        | 0AutmtionTier1_Dont_delete   | AutoTstBuyer |
# #| Flooring Selector_Preliminary                 | Report Viewer                        | 0AutmtionTier1_Dont_delete   | AutoTstBuyer |
# | Design Summary Buyer_Preliminary              | Configure Buyer Summary Report       | Bella Fiore-25522250000	   | Automation101 |
# | Sales Calculator Summary_Preliminary		    | sales calculator summary             | Bella Fiore-25522250000       | Automation101 |
# | Flooring Quote Calculator Breakdown           | flooring calculator breakdown        | Bella Fiore-25522250000	   | Automation101 |
# | Counter and Wall Quote Calculator Breakdown   | counterandwall calculator breakdown  | Bella Fiore-25522250000       | Automation101 |
# | Job Report Material and Labor Breakdown_Quote | Configure Job Detail Report          | Bella Fiore-25522250000	   | Automation101 |
# | Design Summary Job_Quote                      | Configure Job Summary Report - HDS   | Bella Fiore-25522250000	   | Automation101 |
# | Design Summary Participant_Quote              | Configure Participant Summary Report | Bella Fiore-25522250000	   | Automation101 |
# | Design Summary Buyer_Quote                    | Configure Buyer Summary Report       | Bella Fiore-25522250000	   | Automation101 |
# | Room Allowance Summary By Category_Quote      | Quote Summary By Category Report     | Bella Fiore-25522250000	   | Automation101 |

#  #Buyers - Open -Reports - Flooring Quote Calculator Breakdown


# #Buyers - Open - CW - Open -  Scenario details page (open area)
# Scenario:  Verify_DC_Buyers_Open_CW_scneario_details_page
# 	Given Buyer's list page is opened
# 		And A buyer with the following attributes is opened: Bella Fiore-25522250000,Automation101
# 		And User navigates to the buyer's scenario list/options selector Page for Counter and Wall Service Offering
# 		And The active Counter and Wall design scenario is opened if Svc Offering is Flooring or CW
# 	 When the link for one of the areas listed in the CW Scenario overview page is clicked
# 	 Then the CW design scenario details page is loaded


# #Buyers - Open - CW - Open -  Scenario details page (open area) - Change Pattern
# #243
# Scenario:  Verify_DC_Buyers_Open_CW_details_page_pattern_bttn
# 	Given Buyer's list page is opened
# 		And A buyer with the following attributes is opened: Bella Fiore-25522250000,Automation101
# 		And User navigates to the buyer's scenario list/options selector Page for Counter and Wall Service Offering
# 		And The active Counter and Wall design scenario is opened if Svc Offering is Flooring or CW
# 		And the link for one of the areas listed in the CW Scenario overview page is clicked
# 	When the Change Pattern buttn is clicked in the CW design scenario details page
# 	Then the Pattern selection modal is displayed in the CW scenario details page 


# #Buyers - Open - CW - Open -  Scenario details page (open area) - Change Grout

# Scenario:  Verify_DC_Buyers_Open_CW_details_page_Change_Grout_bttn
# 	Given Buyer's list page is opened
# 		And A buyer with the following attributes is opened: Bella Fiore-25522250000,Automation101
# 		And User navigates to the buyer's scenario list/options selector Page for Counter and Wall Service Offering
# 		And The active Counter and Wall design scenario is opened if Svc Offering is Flooring or CW
# 		And the link for one of the areas listed in the CW Scenario overview page is clicked
# 	When the Change Grout buttn is clicked in the CW design scenario details page
# 	Then the Grout selection modal is displayed in the CW scenario details page 

# #Buyers - Open - CW - Open -  Scenario details page (open area) - Opt. Design Feat. - 

# Scenario:  Verify_DC_Buyers_Open_CW_details_page_Opt_Design_Feature_bttn
# 	Given Buyer's list page is opened
# 		And A buyer with the following attributes is opened: Bella Fiore-25522250000,Automation101
# 		And User navigates to the buyer's scenario list/options selector Page for Counter and Wall Service Offering
# 		And The active Counter and Wall design scenario is opened if Svc Offering is Flooring or CW
# 		And the link for one of the areas listed in the CW Scenario overview page is clicked
# 	When the Optional Design Feature buttn is clicked in the CW design scenario details page
# 	Then the Optional Design Feature selection modal is displayed in the CW scenario details page 

# #Buyers - Open - CW - Open -  Scenario details page (open area) - Speciality Items

# Scenario:  Verify_DC_Buyers_Open_CW_details_page_Specialty_Items_bttn
# 	Given Buyer's list page is opened
# 		And A buyer with the following attributes is opened: Bella Fiore-25522250000,Automation101
# 		And User navigates to the buyer's scenario list/options selector Page for Counter and Wall Service Offering
# 		And The active Counter and Wall design scenario is opened if Svc Offering is Flooring or CW
# 		And the link for one of the areas listed in the CW Scenario overview page is clicked
# 	When the Speciality Items buttn is clicked in the CW design scenario details page
# 	Then the Speciality Items selection modal is displayed in the CW scenario details page 

# #Buyers - Open - CW - Open -  Scenario details page (open area) - Extras

# Scenario:  Verify_DC_Buyers_Open_CW_details_page_Extras_bttn
# 	Given Buyer's list page is opened
# 		And A buyer with the following attributes is opened: Bella Fiore-25522250000,Automation101
# 		And User navigates to the buyer's scenario list/options selector Page for Counter and Wall Service Offering
# 		And The active Counter and Wall design scenario is opened if Svc Offering is Flooring or CW
# 		And the link for one of the areas listed in the CW Scenario overview page is clicked
# 	When the Extras buttn is clicked in the CW design scenario details page
# 	Then the Optional Extras selection modal is displayed in the CW scenario details page 

# #Buyers - Open - CW - Open -  Scenario details page (open area) - Adjustments
# Scenario:  Verify_DC_Buyers_Open_CW_details_page_Adjustments_bttn
# 	Given Buyer's list page is opened
# 		And A buyer with the following attributes is opened: Bella Fiore-25522250000,Automation101
# 		And User navigates to the buyer's scenario list/options selector Page for Counter and Wall Service Offering
# 		And The active Counter and Wall design scenario is opened if Svc Offering is Flooring or CW
# 		And the link for one of the areas listed in the CW Scenario overview page is clicked
# 	When the Adjustments buttn is clicked in the CW design scenario details page
# 	Then the Adjustments modal is displayed in the CW scenario details page 

# #Buyers - Open - CW - Open -  Scenario details page (open area) - Design Feat. Search
# Scenario:  Verify_DC_Buyers_Open_CW_details_page_design_Feature_Search_bttn
# 	Given Buyer's list page is opened
# 		And A buyer with the following attributes is opened: Bella Fiore-25522250000,Automation101
# 		And User navigates to the buyer's scenario list/options selector Page for Counter and Wall Service Offering
# 		And The active Counter and Wall design scenario is opened if Svc Offering is Flooring or CW
# 		And the link for one of the areas listed in the CW Scenario overview page is clicked
# 	When the Search button for any one of the required design features is clicked in the CW design scenario details page
# 	Then the Product Search modal is displayed in the CW scenario details page 


#  #Buyers - Open -Reports - Job Report Material and Labor Breakdown (Quote)
#  #Buyers - Open - Reports - Design Summary Job (Quote)
#  #Buyers - Open - Reports - Design Summary Participant (Quote) 
#  #Buyers - Open - Reports - Design Summary Buyer (Quote)



# ##=============================COMMUNITY MANAGEMENT=========================



# #Communities list
# #105
# Scenario: Verify_Comm_Communities_List page  
# 	Given HDS Home page is displayed
# 	When  Communities page link under Community Management Menu is clicked
# Then  Communities page of the Community Management Menu is loaded 



# #  CM - Open 
# #111
# Scenario:  Verify_Comm_HomePage
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 	When User opens community named Bella Fiore-25522250000
# 	Then Community info page is loaded



# #CM - Open - Community Setup (tab)   
# #CM - Open - Report Setup (tab)
# #CM - Open  - Email Setup (tab)
# #CM - Open  - Calculation Setup (tab)
# #CM - Open  - Contact Setup (tab)
# #CM - Open  - Service Offerings (tab)
# Scenario Outline: Verify_Comm_HomePage_Tabs
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When the tab <CommunityTab> is clicked in the Community Home page
# 	Then the panel for <CommunityTab> tab is displayed in the Community Home page

# Examples: 
# | CommunityTab      |
# | Community_Setup   |
# | Report_Setup      |
# | Email_Setup       |
# | Calculation_Setup |
# | Contact_Setup     |
# | Service_Offering  |



# #CM - Open - Community Setup - Add Contact - Add New Contact
# Scenario Outline: Verify_Comm_HomePage_ContactSetup_Add New Contact
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And the tab <CommunityTab> is clicked in the Community Home page
# 	When the Add New Contact button/link is clicked in the contact setup tab of the community home page
# 	Then a new row is added to the contact setup tab of the community home page
# Examples: 
# | CommunityTab      |
# | Contact_Setup     |

# #Builders (Community Management)
# #101
# Scenario: Verify_Comm_Builders
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 	When the Builders Link is clicked under community management
# 	Then The builders list page for the community is loaded

# #Builders - Open (Community Management)
# #102
# Scenario: Verify_Comm_Builders_Open
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And the Builders Link is clicked under community management
# 	When the Open button is clicked for the first builder listed in the Community Builders list page
# 	Then the community Builder Editor page is opened 

# ##Builders - Open - Add New Contacts - (Community Management)
# ##103
# #Scenario: Verify_Comm_Builders_Open_AddNewContact
# #	Given HDS Home page is displayed
# #		And the Builders Link is clicked under community management
# #		And the Open button is clicked for the first builder listed in the Community Builders list page
# #	When the Add New Contact button is clikcked in the community builder editor page
# #	Then the Contact editor page for the community builder is loaded

# #Builders - New (Community Management)
# #104
# Scenario: Verify_Comm_Builders_New_
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And the Builders Link is clicked under community management
# 	When the New button is clicked in the Community builders list page
# 	Then the community Builder Editor page is opened 

# ##CM - Open - Community Setup - Add Contact
# ##117
# #Scenario: Verify_Comm_HomePage_Add_Builder_Contact
# #	Given HDS Home page is displayed
# #		And Communities list page is opened
# #		And User opens community named 0AutmtionTier1_Dont_delete
# #	When the Add Contact button is clicked in the community home page
# #	Then the builder Community contact page is loaded

	
# #CM - Open - Community Setup - Add New cutoff 
# #119
# Scenario: Verify_Comm_HomePage_Add_New_Cutoff
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When the Add New Cutoff button is clicked in the community home page
# 	Then the LSO cutoff page for the community is loaded

	
# #CM - Open - Community Setup -Open LSO cutff 
# #120
# Scenario: Verify_Comm_HomePage_Open_LSO_Cutoff
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When the Open button is clicked for a randomly selected LSO Cutoff in the community home page
# 	Then the LSO cutoff page for the community is loaded


# #CM - Open - Prod Setup	
# #121
# Scenario:  Verify_Comm_ProdSetupPage
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 	And User opens community named Bella Fiore-25522250000
# 	When User clicks on Product Setup Link under Community Management
# 	Then the Community Product setup page is loaded

# #CM - Open - Prod Setup	- Open
# #121
# Scenario:  Verify_Comm_ProdSetupPage_Open
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 	And User opens community named Bella Fiore-25522250000
# 	And User clicks on Product Setup Link under Community Management
# 	When the Open button is clicked for a randomly selected product in the community product setup list page
# 	Then the Product Editor page for the community product setup is loaded


# #CM - Open - Prod Setup	- Open
# #121
# Scenario:  Verify_Comm_ProdSetupPage_Open_ViewHistory
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 	And User opens community named Bella Fiore-25522250000
# 	And User clicks on Product Setup Link under Community Management
# 	And the Open button is clicked for a randomly selected product in the community product setup list page
# 	When the View button in the community product setup product editor page is clicked
# 	Then the history page for the selected Product of the community product setup is loaded


# #CM - Open - Standards Setup
# #126
# Scenario:  Verify_Comm_Standard_Setup_page
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When User clicks on Standards Setup link under Community Management
# 	Then the Community Standards setup page is loaded

# #CM - Open - Standards Setup - Edit
# #127
# Scenario:  Verify_Comm_Standard_Setup_page_edit_Prod
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Standards Setup link under Community Management
# 	When User clicks on Edit button for one of the standard products listed in the Community standard setup page
# 	Then the product search modal is displayed in the community standard setup page


# #CM - Open - Standards Setup - Add Product
# #128
# Scenario:  Verify_Comm_Standard_Setup_page_Add_Products
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Standards Setup link under Community Management
# 	When User clicks on 'Add Product' button in the Community standard setup page
# 	Then the product search modal is displayed in the community standard setup page

# #CM - Open - Standards Setup - Flring Stndard prods (tab)
# #130
# Scenario:  Verify_Comm_Standard_Setup_page_Flooring_Tab
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Standards Setup link under Community Management
# 	When the Flooring tab is clicked in the Community standard setup page
# 	Then Flooring Product Categories are displayed in the Community standard setup page
	
# #CM - Open - Standards Setup - CW Standard prods (tab)
# Scenario:  Verify_Comm_Standard_Setup_page_CW_Tab
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Standards Setup link under Community Management
# 	When the CW tab is clicked in the Community standard setup page
# 	Then CW Product Categories are displayed in the Community standard setup page


# #CM - Open - Floor Plans 
# Scenario:  Verify_Comm_FloorPlan_Pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 	And User opens community named Bella Fiore-25522250000
# 	When User clicks on Floor Plan Link under Community Management
# 	Then the Community Floor Plan list page is loaded 

# #CM - Open - Flooring Group Setup 
# Scenario:  Verify_Comm_FlrngGrpSetUp_Pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 	And User opens community named Bella Fiore-25522250000
# 	When User clicks on Flooring Group Link under Community Management
# 	Then the Community Flooring Group list page is loaded 

# #CM - Open - LifeStyle Options  
# Scenario:  Verify_Comm_LSO_list_Pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When User clicks on Lifestyle Options Link under Community Management
# 	Then the Community Lifestyle Options list page is loaded

# #CM - Open - LifeStyle Options  - Open
# #169
# Scenario:  Verify_Comm_LSO_list_Pg Open
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Lifestyle Options Link under Community Management
# 	When the Open button is clicked for a randomly selected LSO in the community LSO page
# 	Then the Community LSO editor page is loaded 

# #CM - Open - LifeStyle Options  - New
# #167
# Scenario:  Verify_Comm_LSO_list_Pg New
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Lifestyle Options Link under Community Management
# 	When the New button is clicked in the community LSO page
# 	Then the Community LSO editor page is loaded 



# # CM - Open - LifeStyle Options - Plan Import  
# Scenario:  Verify_Comm_LSO_PlnImport_Pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When User clicks on Lifestyle Options plan import Link under Community Management
# 	Then the Community Lifestyle Options plan import page is loaded


# #CM - Open - LifeStyle Options (option )import 
# #174 
# Scenario:  Verify_Comm_LSO_Option_Import_Pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When User clicks on Lifestyle Options option import Link under Community Management
# 	Then the Community Lifestyle Options option import page is loaded
	
# # CM - Open - LifeStyle Options - Option Export  
# Scenario:  Verify_Comm_LSO_Option_Export_Pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When User clicks on Lifestyle Options option export Link under Community Management
# 	Then the Community Lifestyle Options option export page is loaded


# #CM - Open - LifeStyle Options Export  - View Options
# #173
# Scenario:  Verify_Comm_LSO_Option_Export_ViewOption_Bttn
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Lifestyle Options option export Link under Community Management
# 	When the View Options button is clicked in the community LSO export page
# 	Then the options table is displayed in the community LSO export page

# #CM - Open - LifeStyle Options   -  Plan Export - View Options
# #177
# Scenario:  Verify_Comm_LSO_Plan_Export_ViewOption_Bttn
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Lifestyle Options option export Link under Community Management
# 		When the View Options button is clicked in the community Lifestyle Options plan export page
# 	Then the options table is displayed in the community Lifestyle Options plan export page


# #CM - Open - LifeStyle Options   -  Plan Export 
# Scenario:  Verify_Comm_LSO_PlnExport_Pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When User clicks on Lifestyle Options plan export Link under Community Management
# 	Then the Community Lifestyle Options plan export page is loaded

	
# #CM - Open - Homesites    
# Scenario:  Verify_Comm_Homesite_Setup_Pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When User clicks on Homesite Link under Community Management
# 	Then the Community Homesite Setup page is loaded

# #CM - Open - Homesites   - Open
   
# Scenario:  Verify_Comm_Homesite_Setup_Pg_Edit
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Homesite Link under Community Management
# 	When the Edit button for the first homesite listed in the commmunity Homesite setup page is clicked
# 	Then the Community Homesite Editor page is loaded


# #CM - Open - Homesites   - New
   
# Scenario:  Verify_Comm_Homesite_Setup_Pg_New
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Homesite Link under Community Management
# 	When the New button is clicked in the commmunity Homesite setup page
# 	Then the Community Homesite Editor page is loaded


# #CM - Open - Copy Utilities 
# Scenario:  Verify_Comm_Copy_Utilities_Pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When User clicks on Copy Utilities Link under Community Management
# 	Then the Community Copy Utilities page is loaded



# #CM - Open - Flooring Extra rules
# Scenario:  Verify_Comm_Flring_Extra_Rules_Pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 	When User clicks on Flooring Extra rules Link under Community Management
# 	Then the Community Flooring Extra rules page is loaded



# #CM - Open - Flooring Extra rules - New
# Scenario:  Verify_Comm_Flring_ExtrRls_New_Pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Flooring Extra rules Link under Community Management
# 	When the New button is clicked in the Flooring Extra Rules list page
# 	Then the Flooring Extra Rules Editor page is loaded


# #CM - Open - Flooring Extra rules - Edit
# Scenario:  Verify_Comm_Flring_ExtrRls_Open
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Flooring Extra rules Link under Community Management
# 	When the first flooring extra rule is opened from the Flooring Extra Rules list page
# 	Then the Flooring Extra Rules Editor page is loaded


# #CM - Open - Flooring Extra rules - New - Select a Product
# Scenario:  Verify_Comm_Flring_ExtrRls_New_SelctProduct
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Flooring Extra rules Link under Community Management
# 		And the New button is clicked in the Flooring Extra Rules list page
# 	#When the 'Select a Product' button is clicked in the Flooring Extra Rules Editor Page
# 	#Then the flooring Extra Selector dialog is displayed in the Flooring Extra Rules Editor Page


# #CM - Open - Flooring Extra rules - New - Change Plans and Take offs
# Scenario:  Verify_Comm_Flring_ExtrRls_New_ChangePlansAndTakeOffs
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Flooring Extra rules Link under Community Management
# 		And the New button is clicked in the Flooring Extra Rules list page
# 	When the 'Change Plans and Takeoffs' button is clicked in the Flooring Extra Rules Editor Page
# 	Then the Change Plans and Takeoffs dialog is displayed in the Flooring Extra Rules Editor Page


# # CM - Open - Flooring Extra rules - Edit - Change
# Scenario:  Verify_Comm_Flring_ExtrRls_Open_ChangeBttn
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Flooring Extra rules Link under Community Management
# 		And the first flooring extra rule is opened from the Flooring Extra Rules list page
# 	#When the 'Change' button is clicked in the Flooring Extra Rules Editor Page
# 	#Then the flooring Extra Selector dialog is displayed in the Flooring Extra Rules Editor Page

# #CM - Open - Flooring Extra rules - Edit - Change Plans and Take offs
# Scenario:  Verify_Comm_Flring_ExtrRls_Open_ChangePlansAndTakeOffs
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Flooring Extra rules Link under Community Management
# 		And the first flooring extra rule is opened from the Flooring Extra Rules list page
# 	When the 'Change Plans and Takeoffs' button is clicked in the Flooring Extra Rules Editor Page
# 	Then the Change Plans and Takeoffs dialog is displayed in the Flooring Extra Rules Editor Page

# #CM - Open - Floor Plans - New 
# Scenario:  Verify_Comm_FloorPlan_New
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	When the 'New' button is clicked in the Floor Plan List page
# 	Then the Community Floor Plan Editor page is loaded 


# #CM - Open - Floor Plans - Edit
# Scenario:  Verify_Comm_FloorPlan_Edit
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	When the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
# 	Then the Community Floor Plan Editor page is loaded 

# #CM - Open - Floor Plans - Edit - Upload New
# #151
# Scenario:  Verify_Comm_FloorPlan_Edit_uploadNewTrcerDiag
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 		And the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
# 	When the 'Upload New' link is clikced in the Community Floor Plan Editor page
# 	Then A new window for uploading new tracer diagram to the community floor plan editor page is displayed

# #CM - Open - Floor Plans - Edit - Upload New
# Scenario:  Verify_Comm_FloorPlan_Edit_Update Image link
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 		And the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
# 	When the 'Update Image' link is clicked for the first diagram listed in the Community Floor Plan Editor page
# 	Then A new window for uploading new tracer diagram to the community floor plan editor page is displayed

# #CM - Open - Floor Plans - Edit - Import Diagram
# Scenario:  Verify_Comm_FloorPlan_Edit_ImportTrcerDiag
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 		And the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
# 	When the 'Import Diagrams' link is clikced in the Community Floor Plan Editor page
# 	Then A new window for importing tracer diagrams to the community floor plan editor page is displayed

	           
			   
# #CM - Open - Floor Plans - Edit - Edit Diagram
# Scenario:  Verify_Comm_FloorPlan_Edit_Edit_TrcerDiag
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 		And the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
# 	When the 'Edit' link is clicked for the first diagram listed in the Community Floor Plan Editor page
# 	#Then A Tracer diagram editor window is displayed for the floor plan

# #CM - Open - Floor Plans - Edit - Create Diagram
# Scenario:  Verify_Comm_FloorPlan_Edit_Create_TrcerDiag
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 		And the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
# 	When the 'Create Diagram' link is clicked for the first background Image listed in the Community Floor Plan Editor page
# 	#Then A Tracer diagram editor window is displayed for the floor plan

# #CM - Open - Floor Plans  - Copy
# Scenario:  Verify_Comm_FloorPlan_Copy
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	When the Copy button is clicked in the Community Floor Plan list page
# 	Then the Floor Plan Copy page for the community is loaded



# #CM - Open - Floor Plans  - Rooms
# Scenario:  Verify_Comm_FloorPlan_Rooms
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	When the 'Rooms' button is clicked for the first plan listed in the Floor Plan List page
# 	Then the room editor page for the Community floor plan is loaded


# #CM - Open - Floor Plans  - Rooms - Add New Room
# Scenario:  Verify_Comm_FloorPlan_Rooms_AddNewRm
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 		And the 'Rooms' button is clicked for the first plan listed in the Floor Plan List page
# 	When the Add New Room button is clicked in the Room editor page for the community floor plan
# 	Then A new row is added in the Room editor page of the community floor plan 



# #CM - Open - Floor Plans  -  - Flooring Take off
# Scenario:  Verify_Comm_FloorPlan_Flring_TakeOffs_pg
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	 When the takeoff option in the Flooring drop down of the first floor plan listed is clicked
# 	 Then the takeoff page for the community floor plan is loaded




# #CM - Open - Floor Plans  -  - Flooring Take off - Allowance Comparison
#  Scenario:  Verify_Comm_FloorPlan_FlringTakeoffs_AllwnceComparison
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	    And the takeoff option in the Flooring drop down of the first floor plan listed is clicked
# 	When the 'Allowance Comparison' button is clicked in the commpunity floorplan Takeoffs page
# 	Then the Allowance Comparison modal is displayed in the Community floorplan Takeoffs page




# #CM - Open - Floor Plans  -  - Flooring Take off - Edit Rule
#  Scenario:  Verify_Comm_FloorPlan_FlringTakeoffs_editRule
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	    And the takeoff option in the Flooring drop down of the first floor plan listed is clicked
# 	When the edit rule button is clicked for a randomly selected room in the community floorplan takeoff page
# 	Then the Edit Takeoff Extra Rule modal is displayed in the community floorplan takeoff page


# #CM - Open - Floor Plans  -  - Flooring Take off - Add Takeoff
#  Scenario:  Verify_Comm_FloorPlan_FlringTakeoffs_addTakeOff
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	    And the takeoff option in the Flooring drop down of the first floor plan listed is clicked
# 	When the Add Takeoff button is clicked in the community flooring takeoff page
# 	Then a new row is added to the takeoff table of the community flooring takeoff page




# #CM - Open - Floor Plans  -  - Flooring Take off - Alternate room configuration page  
# #19
#  Scenario:  Verify_Comm_FloorPlan_FlringTakeoffs_Alternate room Configuration page
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	    And the takeoff option in the Flooring drop down of the first floor plan listed is clicked
# 	When the 'Alternate Room Configuration' button is clicked in the Community floor plan take off page
# 	Then The Alternate Room Configuration page of the community floor plan is loaded

# #CM - Open - Floor Plans  -  - Flooring Control 
# #159
#  Scenario:  Verify_Comm_FloorPlan_Flooring_Control
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	When the Control option in the Flooring drop down of the first floor plan listed is clicked in the Community floorPlan list page
# 	Then Product control By Area page of the selected Community floor plan is loaded

# #CM - Open - Floor Plans  -  - Flooring Report 
# #160
#  Scenario:  Verify_Comm_FloorPlan_Flooring_Report
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	#When the Report option in the Flooring drop down of the first floor plan listed is clicked in the Community floorPlan list page
# 	#Then A new window for the flooring Take-Off Detail Report of the community floor plan is displayed


# #CM - Open - Floor Plans  -  - Window Treatmnt - import temlate
# #165
#  Scenario:  Verify_Comm_FloorPlan_Window_Trtmnt_ImportTmplt
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	When the Import Template option in the Window Treatments drop down of the first floor plan listed is clicked in the Community floorPlan list page
# 	Then the Import Window Treatement Template modal is displayed in the Community floorplan list page


# #CM - Open - Floor Plans - CW Structure 
# #161
#  Scenario:  Verify_Comm_FloorPlan_CW Strucutre_Page
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	 When the 'Structure' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
# 	 Then the community Counter and Wall structure page for the floor plan is loaded


# #CM - Open - Floor Plans  -  - CW Structure - Copy Area
# #152
#  Scenario:  Verify_Comm_FloorPlan_CW Strucutre_Page_copyAreaModal
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	#	And User navigates to the Community CW structure page for floor plan named testPlan2
# 		And the 'Structure' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
# 		And all the rooms are expanded in the community CW structure page
# 	When the copy button for the first area displayed is clicked in the community CW structure page
# 	Then the modal for copying area is displayed in the community CW structure page



# #CM - Open - Floor Plans  -  - CW Structure - copy structure/detail
# #171
#  Scenario:  Verify_Comm_FloorPlan_CW Strucutre_Page_copy Structure/detail bttn
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 		And User navigates to the Community CW structure page for floor plan named testPlan
# 	When the Copy Structure/Detail button is clicked in the community CW structure page
# 	Then the Floor Plan Copy page for the community is loaded


# #CM - Open - Floor Plans  -  - CW Structure - Expand All Rooms
# #149
#  Scenario:  Verify_Comm_FloorPlan_CW Strucutre_Page_ExpandAllRooms
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 		And the 'Structure' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
# 	When the Expand All button is clicked in the CW community strucutre page
# 	Then all the rooms in the CW community strucutre page are expanded


# #CM - Open - Floor Plans  -  - CW Structure - Collapse All Rooms
# #129
#  Scenario:  Verify_Comm_FloorPlan_CW Strucutre_Page_CollapseAllRooms
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 		And the 'Structure' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
# 		And all the rooms are expanded in the community CW structure page
# 	When the Collapse All button is clicked in the CW community strucutre page
# 	Then all the rooms in the CW community strucutre page are collapsed


# #CM - Open - Floor Plans  -  - CW Structure - Add New Room
# #162
#  Scenario:  Verify_Comm_FloorPlan_CW Strucutre_Pg_AddNewRoom
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	    And the 'Structure' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
# 	 When the 'Add New Room' buttn is clicked in the Community CW Strucutre page
# 	 Then the modal for adding new room to the Community CW structure page is displayed
# #CM - Open - Floor Plans  -  - CW Structure -Copy Structure/Detail
# #163
#  Scenario:  Verify_Comm_FloorPlan_CW Details_Page
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	 When the 'Details' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
# 	 Then the community Counter and Wall details page for the floor plan is loaded


# #CM - Open - Floor Plans  -  - CW Details - Expand All Rooms
# #164
#  Scenario:  Verify_Comm_FloorPlan_CW Details_Page ExpandAll
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	    And the 'Details' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
# 	 When the Expand All button is clicked in the CW community details page
# 	 Then all the rooms in the CW community details page are expanded

# #CM - Open - Floor Plans  -  - CW Details - Collapse All Rooms
# #136
#  Scenario:  Verify_Comm_FloorPlan_CW Details_Page Collapse All
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Floor Plan Link under Community Management
# 	    And the 'Details' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
# 		And all the rooms are expanded in the community CW details page
# 	 When the collapse All button is clicked in the CW community details page
# 	 Then all the rooms in the CW community details page are collapsed