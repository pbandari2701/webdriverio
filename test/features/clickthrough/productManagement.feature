@test
Feature: BVT Click Through Functionality of HDS application

    Feature Description "This feature validate the Business Critical Functionality of the HDS Application"

Background: Pre Login as HDS Admin
    Given I am logged in to HDS as a Admin

# ##PRODUCT MANAGEMENT========================================================
@tc:2103 @clickthrough @bvt
#Product Management - Catalogs
Scenario: Verify_Prod_Mgmt_Catalogs_page  
	Given HDS Home page is displayed
	When  Catalogs page link under Product Management Menu is clicked
	Then  Catalogs page is loaded

@tc:2104 @clickthrough @bvt
#Product Management - Catalogs - Edit
Scenario: Verify_Prod_Mgmt_Catalogs_page_Edit_catalog  
	Given HDS Home page is displayed
		And Catalogs page link under Product Management Menu is clicked
	When the Edit button for the first catalog listed is clicked
	Then  Excluded Offering text element is displayed

@tc:2105 @clickthrough @bvt
#Product Management - Catalogs - Show Products
Scenario: Verify_Prod_Mgmt_Catalogs_page_showProducts  
	Given HDS Home page is displayed
		And Catalogs page link under Product Management Menu is clicked
	When the Show Products button for the first catalog listed is clicked
	Then Product List page is loaded

@tc:2106 @clickthrough @bvt
#Product Management - Catalogs - New
Scenario: Verify_Prod_Mgmt_Catalogs_page_New_catalog  
	Given HDS Home page is displayed
		And Catalogs page link under Product Management Menu is clicked
	When new button is clicked in the Catalog list page
	Then  the catalog drop down field is displayed

@tc:2107    @clickthrough @bvt
# Product Management Product list 
Scenario: Verify_Prod_Mgmt_Product_List_page  
	Given HDS Home page is displayed
	When  Product List page link under Product Management Menu is clicked
	Then  Product List page is loaded 


#Product list - Import 
#137
@tc:2107	@clickthrough @bvt																						 
Scenario: Verify_Prod_Mgmt_Product_List_Import
	Given HDS Home page is displayed
		And  Product List page link under Product Management Menu is clicked
	When the Import button in the Product list page is clicked
	Then Subscriber Catalog Import page is loaded 

@tc:2108 @clickthrough @bvt																						 
#Product list - Open 
#81
Scenario: Verify_Prod_Mgmt_Product_Editor_page 
	Given HDS Home page is displayed
		And  Product List page link under Product Management Menu is clicked
	When the Open button for the first product listed in the Product list page is clicked
	Then  Product Editor page is loaded

@tc:2109 @clickthrough @bvt																			 
#Product list - Open - Open communities
#82
Scenario: Verify_Prod_Mgmt_Product_Editor_OpenComms
	Given HDS Home page is displayed
		And  Product List page link under Product Management Menu is clicked
		And the Open button for the first product listed in the Product list page is clicked
	When the 'Open Communities' link is clicked in the Product Editor page
	Then Communities page of the Community Management Menu is loaded

@tc:2110 @clickthrough @bvt												 
#Product list - Open - Any Open  Buyer Scenario
#83
Scenario: Verify_Prod_Mgmt_Product_Editor_OpenAnyBuyerScenario
	Given HDS Home page is displayed
		And  Product List page link under Product Management Menu is clicked
		And the Open button for the first product listed in the Product list page is clicked
	When the 'Any Open Buyer Scenarios' link is clicked in the Product Editor page
	Then the Buyers list page is loaded

@tc:2111 @clickthrough @bvt												 
#Product list - Open - Open Buyer Active Scenario 
#85
Scenario: Verify_Prod_Mgmt_Product_Editor_OpenBuyerActiveScenarios
	Given HDS Home page is displayed
		And  Product List page link under Product Management Menu is clicked
		And the Open button for the first product listed in the Product list page is clicked
	When the 'Open Buyer Active Scenarios' link is clicked in the Product Editor page#
	Then the Buyers list page is loaded

@tc:2112 @clickthrough @bvt						 
# 86 Global HDS Catalog Search - HDS 
Scenario: Verify_Global_HDS_Catalog_Search  
	Given HDS Home page is displayed
	When  Global HDS Catalog Search List page link under Product Management Menu is clicked
	Then  Global HDS Catalog Search List page is loaded 

# Scenario: Verify_Global_HDS_Catalog_Search_for_SAPNumber
# 	Given HDS Home page is displayed
# 	When  Global HDS Catalog Search List page link under Product Management Menu is clicked
# 	Then Global HDS Catalog Search List page is loaded
# 	   And Write * on SAP Number textbox and Searched
# 	   And verify the search filter products according to the given keyword
# 	   And click on Export Button to export the product to the spreadsheet 

	#05EE
@tc:2113 @clickthrough @bvt						 
Scenario: Verify_Global_HDS_Catalog_Search_for_Style_Number
	Given HDS Home page is displayed
	When Global HDS Catalog Search List page link under Product Management Menu is clicked
	Then Global HDS Catalog Search List page is loaded
	   And  Write F70ACCE on Style Number textbox and Searched
	   And verify the search filter products according to the given keyword for Style Number
	
#F70ACCE
@tc:2114 @clickthrough @bvt						 
Scenario: Verify_Global_HDS_Catalog_Search_for_Style_Type
	Given HDS Home page is displayed
	When Global HDS Catalog Search List page link under Product Management Menu is clicked
	Then Global HDS Catalog Search List page is loaded
		And  Write COMMERCIAL LEVEL CUT LOOP on Style Type textbox and Searched
		And verify the search filter products according to the given keyword for Style Type

# Scenario: Verify_Global_HDS_Catalog_Search_for_Sales_Description
# 	Given HDS Home page is displayed
# 	When Global HDS Catalog Search List page link under Product Management Menu is clicked
# 	Then Global HDS Catalog Search List page is loaded
# 	And  Write THRESHOLD  on Sales Description textbox and Searched

# 	#THRESHOLD
@tc:2115 @clickthrough @bvt						 
Scenario: Verify_Global_HDS_Catalog_Search_for_Style_Name
	Given HDS Home page is displayed
	When Global HDS Catalog Search List page link under Product Management Menu is clicked
	Then Global HDS Catalog Search List page is loaded
		And  Write ante on Style Name textbox and Searched
		And verify the search filter products according to the given keyword for Style Name

@tc:2116 @clickthrough @bvt					 
Scenario: Verify_Global_HDS_Catalog_Search_for_Vendor
	Given HDS Home page is displayed
	When Global HDS Catalog Search List page link under Product Management Menu is clicked
	Then Global HDS Catalog Search List page is loaded
		And  Write ARIZONA TILE LLC 11067 on Vendor textbox and Searched
		And verify the search filter products according to the given keyword for vendor

@tc:2117 @clickthrough @bvt					 
Scenario: Verify_Global_HDS_Catalog_Search_for_ILG_Number
	Given HDS Home page is displayed
	When Global HDS Catalog Search List page link under Product Management Menu is clicked
	Then Global HDS Catalog Search List page is loaded
		And  Write ILG-1001-10040 on ILG Number textbox and Searched
		And verify the search filter products according to the given keyword for ILG Number


@tc:2118 @clickthrough @bvt					 
Scenario: Verify_Global_HDS_Catalog_Search_for_Product_Category 
	Given HDS Home page is displayed
	When Global HDS Catalog Search List page link under Product Management Menu is clicked
	Then Global HDS Catalog Search List page is loaded
		And  Write hardwood on Product Category textbox and Searched
		And verify the search filter products according to the given keyword for Product Category

@tc:2119 @clickthrough @bvt					
Scenario: Verify_Global_HDS_Catalog_Search_for_Color_Name
	Given HDS Home page is displayed
	When Global HDS Catalog Search List page link under Product Management Menu is clicked
	Then Global HDS Catalog Search List page is loaded
		And  Write TOUR  on Color Name textbox and Searched
		And verify the search filter products according to the given keyword for Color Name

#Product Type 
#88
@tc:2120 @clickthrough @bvt					
Scenario: Verify_Prod_Mgmt_Product_Types_List_page  
	Given HDS Home page is displayed
	When  Product Types  page link under Product Management Menu is clicked
	Then  Product Types  page is loaded 
 
#Product Type - Open
#89
@tc:2121 @clickthrough @bvt				
Scenario: Verify_Prod_Mgmt_Product_Types_Editor_page  
	Given HDS Home page is displayed
		And Product Types  page link under Product Management Menu is clicked
	When the Open button for the first product type In the product types list page is clicked
	Then  Product Types Editor page is loaded



# #Install Methods - Open 
# #93

# #Install Methods - New 
# #94

# #Install Methods - Open -  View history
# #96

#Product Type - New
#90
@tc:2122 @clickthrough @bvt				
Scenario: Verify_Prod_Mgmt_Product_Types_List_page_New 
	Given HDS Home page is displayed
		And Product Types  page link under Product Management Menu is clicked
	When the New button in the Product Type list page is clicked
	Then  Product Types Editor page is loaded

@tc:2123 @clickthrough @bvt				
Scenario: Verify_Prod_Mgmt_Install_Methods_page  
	Given HDS Home page is displayed
	When  Install Methods page link under Product Management Menu is clicked
	Then  Install Methods list page is loaded 


@tc:2124 @clickthrough @bvt			
#Install Methods - Open 
#93
Scenario: Verify_Prod_Mgmt_Install_Methods_Editor_Page 
	Given HDS Home page is displayed
		And Install Methods page link under Product Management Menu is clicked
	When the Open button for the first Install method is clicked in the Install methods page
	Then the install Methods Editor page is loaded
	
#Install Methods - New 
#94
@tc:2125 @clickthrough @bvt	
Scenario: Verify_Prod_Mgmt_Install_Methods_page_New 
	Given HDS Home page is displayed
		And Install Methods page link under Product Management Menu is clicked
	When the New button is clicked in the Install Methods list page
	Then the install Methods Editor page is loaded

#Install Methods - Open -  View history		
#96
@tc:2126 @clickthrough @bvt	
Scenario: Verify_Prod_Mgmt_Install_Methods_Editor_ViewHistory
	Given HDS Home page is displayed
		And Install Methods page link under Product Management Menu is clicked
		And the Open button for the first Install method is clicked in the Install methods page
	When the View button is clicked in the Install Method Editor page
	Then the Install Method History page is loaded

@tc:2127 @clickthrough @bvt	
Scenario Outline: Verify_Prod_Mgmt_Install_Methods_Group_pages
	Given HDS Home page is displayed
	When  the <ServiceOffering> Install Methods Group link under Product Management Menu is clicked
	Then  the <ServiceOffering> Install Methods Group page is loaded
Examples: 
| ServiceOffering |
| Counter & Wall  |
| Flooring        |

@tc:2128 @clickthrough @bvt	
Scenario Outline: Verify_Prod_Mgmt_Install_Methods_Group_pg_Edit_bttn_FL 
	Given HDS Home page is displayed
		And  the <ServiceOffering> Install Methods Group link under Product Management Menu is clicked
	When the Edit button is clicked for a randomly selected Install Method Group in the Install Method group page for Flooring
	Then  the selected install method group displays in edit mode in the in the Install Method group page 
Examples: 
| ServiceOffering |
| Flooring        |

@tc:2129 @clickthrough @bvt	
Scenario Outline: Verify_Prod_Mgmt_Install_Methods_Group_pg_Edit_bttn  
	Given HDS Home page is displayed
		And  the <ServiceOffering> Install Methods Group link under Product Management Menu is clicked
	When the Edit button is clicked for a randomly selected Install Method Group in the Install Method group page for CW
	Then  the selected install method group displays in edit mode in the in the Install Method group page
Examples: 
| ServiceOffering |
| Counter & Wall  |

@tc:2130 @clickthrough @bvt
Scenario Outline: Verify_Prod_Mgmt_Install_Methods_Group_pg_delete_bttn_CW  
	Given HDS Home page is displayed
		And  the <ServiceOffering> Install Methods Group link under Product Management Menu is clicked
	When the Delete button is clicked for a randomly selected Install Method Group in the Install Method group page for CW
	Then a confirmation dialog or alert is displayed in the Install Method group page 
Examples: 
| ServiceOffering |
| Counter & Wall  |

@tc:2131 @clickthrough @bvt
Scenario Outline: Verify_Prod_Mgmt_Install_Methods_Group_pg_delete_bttn_Flooring
	Given HDS Home page is displayed
		And  the <ServiceOffering> Install Methods Group link under Product Management Menu is clicked
	When the Delete button is clicked for a randomly selected Install Method Group in the Install Method group page for Flooring
	Then a confirmation dialog or alert is displayed in the Install Method group page
Examples: 
| ServiceOffering |
| Flooring        |
