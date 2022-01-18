
# @BVT_ClickThrough @tfs:https://isidev.visualstudio.com/Apps
# Feature: BVT_Click_Through_Tests
	
# Background: Pre Login as HDS Admin
#     Given I am logged in to HDS as a Admin
# ##=============================COMMUNITY MANAGEMENT=========================

#Communities list
#105
@tc:2179 @clickthrough @bvt
Scenario: Verify_Comm_Communities_List page  
	Given HDS Home page is displayed
	When  Communities page link under Community Management Menu is clicked
	Then  Communities page of the Community Management Menu is loaded
#  CM - Open 
#111
@tc:2180 @clickthrough @bvt
Scenario Outline:  Verify_Comm_HomePage
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
	Then Community info page is loaded
Examples:
|Community_Name   |
|Westford 3s PH 2 |

# #CM - Open - Community Setup (tab)   
# #CM - Open - Report Setup (tab)
# #CM - Open  - Email Setup (tab)
# #CM - Open  - Calculation Setup (tab)
# #CM - Open  - Contact Setup (tab)
# #CM - Open  - Service Offerings (tab)
@tc:2181 @clickthrough @bvt
Scenario Outline: Verify_Comm_HomePage_Tabs
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And the tab <CommunityTab> is clicked in the Community Home page
	Then the panel <CommunityPanel> for <CommunityTab> tab is displayed in the Community Home page
Examples: 
|CommunityTab      |Community_Name   |CommunityPanel  				|
|Community Setup   |Westford 3s PH 2 |Community Information:		|
|Report Setup      |Westford 3s PH 2 |Report Disclosure Statements |
|Email Setup       |Westford 3s PH 2 |Email Templates				|
|Calculation Setup |Westford 3s PH 2 |Builder Calculation Method:	|
|Contact Setup     |Westford 3s PH 2 |Add New Contact				|
|Service Offerings |Westford 3s PH 2 |Service Offerings:			|

#CM - Open - Community Setup - Add Contact - Add New Contact
@tc:2182 @clickthrough @bvt
Scenario Outline: Verify_Comm_HomePage_ContactSetup_Add New Contact
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And the tab <CommunityTab> is clicked in the Community Home page
		And the Add New Contact link is clicked in the contact setup tab of the community home page
	Then a new row is added to the contact setup tab of the community home page
Examples: 
| CommunityTab      |Community_Name   |
| Contact Setup     |Westford 3s PH 2 |

#Builders (Community Management)
#101
@tc:2183 @clickthrough @bvt
Scenario: Verify_Comm_Builders
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When the Builders Link is clicked under community management
	Then The builders list page for the community is loaded

# #Builders - Open (Community Management)
# #102
@tc:2184 @clickthrough @bvt
Scenario: Verify_Comm_Builders_Open
	Given HDS Home page is displayed
		And the Builders Link is clicked under community management
	When the Open button is clicked for the first builder listed in the Community Builders list page
	Then the community Builder Editor page is opened 


#Builders - New (Community Management)
#104
@tc:2186 @clickthrough @bvt
Scenario: Verify_Comm_Builders_New_
	Given HDS Home page is displayed
		And the Builders Link is clicked under community management
	When the New button is clicked in the Community builders list page
	Then the community Builder Editor page is opened 
	
#CM - Open - Community Setup - Add New cutoff 
#119
@tc:2188 @clickthrough @bvt
Scenario Outline: Verify_Comm_HomePage_Add_New_Cutoff
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And the Add New Cutoff button is clicked in the community home page
	Then the LSO cutoff page for the community is loaded
Examples:
|Community_Name  |
|Westford 3s PH 2|
	
#CM - Open - Community Setup -Open LSO cutff 
#12
@tc:2189 @clickthrough @bvt
Scenario: Verify_Comm_HomePage_Open_LSO_Cutoff
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And the Open button is clicked for a randomly selected LSO Cutoff in the community home page
	Then the LSO cutoff page for the community is loaded
Examples:
|Community_Name  |
|Westford 3s PH 2|

#CM - Open - Prod Setup	
#121
@tc:2190 @clickthrough @bvt
Scenario:  Verify_Comm_ProdSetupPage
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Product Setup Link under Community Management
	Then the Community Product setup page is loaded
Examples:
|Community_Name  |
|Westford 3s PH 2|

#CM - Open - Prod Setup	- Open
#121
@tc:2191 @clickthrough @bvt
Scenario:  Verify_Comm_ProdSetupPage_Open
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Product Setup Link under Community Management
		And the Open button is clicked for a randomly selected product in the community product setup list page
	Then the Product Editor page for the community product setup is loaded
Examples:
|Community_Name  |
|Westford 3s PH 2|

#CM - Open - Prod Setup	- Open
#121
@tc:2192 @clickthrough @bvt
Scenario Outline:  Verify_Comm_ProdSetupPage_Open_ViewHistory
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Product Setup Link under Community Management
		And the Open button is clicked for a randomly selected product in the community product setup list page
		And the history button in the community product setup product editor page is clicked
	Then the history modal for the selected Product of the community product setup is loaded
Examples:
|Community_Name  |
|Westford 3s PH 2|

#CM - Open - Standards Setup
#126
@tc:2193 @clickthrough @bvt
Scenario Outline:  Verify_Comm_Standard_Setup_page
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
	When User clicks on Standards Setup link under Community Management
	Then the Community Standards setup page is loaded
Examples:
|Community_Name  |
|Westford 3s PH 2|

#CM - Open - Standards Setup - Edit
#127
@tc:2194 @clickthrough @bvt
Scenario Outline:  Verify_Comm_Standard_Setup_page_edit_Prod
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Standards Setup link under Community Management
		And User clicks on Edit button for one of the standard products listed in the Community standard setup page
	Then the product search modal is displayed in the community standard setup page
Examples:
|Community_Name  |
|Westford 3s PH 2|

#CM - Open - Standards Setup - Add Product
#128
@tc:2195 @clickthrough @bvt
Scenario Outline:  Verify_Comm_Standard_Setup_page_Add_Products
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Standards Setup link under Community Management
		And User clicks on 'Add Product' button in the Community standard setup page
	Then the product search modal is displayed in the community standard setup page
Examples:
|Community_Name  |
|Westford 3s PH 2|

#CM - Open - Standards Setup - Flring Stndard prods (tab)
#130
@tc:2196 @clickthrough @bvt
Scenario Outline:  Verify_Comm_Standard_Setup_page_Flooring_Tab
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Standards Setup link under Community Management
		And the <tabname> is clicked in the Community standard setup page
	Then <Categories> are displayed in the Community standard setup page
Examples:
	| tabname 		| Categories 		 |Community_Name  	|
	| flooring_tab  |flooring_products	 | Westford 3s PH 2	|
	| cw_tab		|cw_products		 | Westford 3s PH 2 |
	| edge_tab		|edge_types			 | Westford 3s PH 2 |
	
#CM - Open - Floor Plans
@tc:2197 @clickthrough @bvt
Scenario Outline:  Verify_Comm_FloorPlan_Pg
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	Then the Community Floor Plan list page is loaded
Examples:
|Community_Name  |
|Westford 3s PH 2|
 
#CM - Open - Flooring Group Setup 
@tc:2198 @clickthrough @bvt
Scenario Outline:  Verify_Comm_FlrngGrpSetUp_Pg
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Flooring Group Link under Community Management
	Then the Community Flooring Group list page is loaded 
Examples:
|Community_Name  |
|Westford 3s PH 2|

#CM - Open - LifeStyle Option 
@tc:2199 @clickthrough @bvt
Scenario Outline:  Verify_Comm_LSO_list_Pg
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Lifestyle Options Link under Community Management
	Then the Community Lifestyle Options list page is loaded
Examples:
|Community_Name  |
|Westford 3s PH 2|

#CM - Open - LifeStyle Options  - Open
#169
@tc:2200 @clickthrough @bvt
Scenario Outline:  Verify_Comm_LSO_list_Pg Open
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Lifestyle Options Link under Community Management
		And the Open button is clicked for a randomly selected LSO in the community LSO page
	Then the Community LSO editor page is loaded
Examples:
|Community_Name  |
|Westford 3s PH 2|

#CM - Open - LifeStyle Options  - New
#167
@tc:2201 @clickthrough @bvt
Scenario Outline:  Verify_Comm_LSO_list_Pg New
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Lifestyle Options Link under Community Management
		And the New button is clicked in the community LSO page
	Then the Community LSO editor page is loaded
Examples:
|Community_Name  |
|Westford 3s PH 2|

# CM - Open - LifeStyle Options - all
@tc:2202 @clickthrough @bvt
Scenario Outline:  Verify_Comm_LSO_all_options
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Lifestyle Options <link> under Community Management
	Then the Community Lifestyle Options <linkpage> is loaded
Examples:
|Community_Name   |link 			|linkpage										|
|Westford 3s PH 2 |plan_import      |HDS (QA) - Lifestyle Options Plan Import - HDS	|
|Westford 3s PH 2 |import   		|HDS (QA) - Lifestyle Options Import - HDS		|
|Westford 3s PH 2 |export   		|Lifestyle Options Export - HDS					|
|Westford 3s PH 2 |plan_export   	|HDS (QA) - Lifestyle Options Plan Export - HDS |
	
#  CM - Open - LifeStyle Options Export  - View Options
#173
@tc:2203 @clickthrough @bvt
Scenario Outline:  Verify_Comm_LSO_Option_Export_ViewOption_Bttn
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Lifestyle Options <link> under Community Management
		And the View Options button is clicked in the community LSO <link> page
	Then the options table is displayed in the community LSO <link> page
Examples:
|Community_Name  |link 	|
|Westford 3s PH 2|export|

#CM - Open - LifeStyle Options   -  Plan Export - View Options
#177
@tc:2204 @clickthrough @bvt
Scenario Outline:  Verify_Comm_LSO_Plan_Export_ViewOption_Bttn
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Lifestyle Options <link> under Community Management
		And the View Options button is clicked in the community LSO <link> page
	Then the options table is displayed in the community LSO <link> page
Examples:
|Community_Name  |link 		  |
|Westford 3s PH 2|plan_export |
	
#CM - Open - Homesites
@tc:2205 @clickthrough @bvt
Scenario Outline:  Verify_Comm_Homesite_Setup_Pg
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Homesite Link under Community Management
	Then the Community Homesite Setup page is loaded
Examples:
|Community_Name  |
|Westford 3s PH 2|

#CM - Open - Homesites   - Open
@tc:2206 @clickthrough @bvt  
Scenario Outline:  Verify_Comm_Homesite_Setup_Pg_Edit
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Homesite Link under Community Management
	When the Edit button for the first homesite listed in the commmunity Homesite setup page is clicked
	Then the Community Homesite Editor page is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Homesites   - New
@tc:2207 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_Homesite_Setup_Pg_New
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Homesite Link under Community Management
		And the New button is clicked in the commmunity Homesite setup page
	Then the Community Homesite Editor page is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Copy Utilities
@tc:2208 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_Copy_Utilities_Pg
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Copy Utilities Link under Community Management
	Then the Community Copy Utilities page is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Flooring Extra rules
@tc:2209 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_Flring_Extra_Rules_Pg
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Flooring Extra rules Link under Community Management
	Then the Community Flooring Extra rules page is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Flooring Extra rules - New
@tc:2210 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_Flring_ExtrRls_New_Pg
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Flooring Extra rules Link under Community Management
		And the New button is clicked in the Flooring Extra Rules list page
	Then the Flooring Extra Rules Editor page is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Flooring Extra rules - Edit
@tc:2211 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_Flring_ExtrRls_Open
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Flooring Extra rules Link under Community Management
		And the first flooring extra rule is opened from the Flooring Extra Rules list page
	Then the Flooring Extra Rules Editor page is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

# #CM - Open - Flooring Extra rules - New - Select a Product
# @tc:2211 @clickthrough @bvt @q1
# Scenario:  Verify_Comm_Flring_ExtrRls_New_SelctProduct
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Flooring Extra rules Link under Community Management
# 		And the New button is clicked in the Flooring Extra Rules list page
# 	#When the 'Select a Product' button is clicked in the Flooring Extra Rules Editor Page
# 	#Then the flooring Extra Selector dialog is displayed in the Flooring Extra Rules Editor Page


#CM - Open - Flooring Extra rules - New - Change Plans and Take offs
@tc:2212 @clickthrough @bvt     
Scenario:  Verify_Comm_Flring_ExtrRls_New_ChangePlansAndTakeOffs
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Flooring Extra rules Link under Community Management
		And the New button is clicked in the Flooring Extra Rules list page
		And the 'Change Plans and Takeoffs' button is clicked in the Flooring Extra Rules Editor Page
	Then the Change Plans and Takeoffs dialog is displayed in the Flooring Extra Rules Editor Page
Examples:
|Community_Name  | 
|Westford 3s PH 2|

# # CM - Open - Flooring Extra rules - Edit - Change
# @tc:2213 @clickthrough @bvt @q1    
# Scenario:  Verify_Comm_Flring_ExtrRls_Open_ChangeBttn
# 	Given HDS Home page is displayed
# 		And Communities list page is opened
# 		And User opens community named Bella Fiore-25522250000
# 		And User clicks on Flooring Extra rules Link under Community Management
# 		And the first flooring extra rule is opened from the Flooring Extra Rules list page
# 	When the 'Change' button is clicked in the Flooring Extra Rules Editor Page
# 	Then the flooring Extra Selector dialog is displayed in the Flooring Extra Rules Editor Page

#CM - Open - Flooring Extra rules - Edit - Change Plans and Take offs
@tc:2214 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_Flring_ExtrRls_Open_ChangePlansAndTakeOffs
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Flooring Extra rules Link under Community Management
		And the first flooring extra rule is opened from the Flooring Extra Rules list page
		And the 'Change Plans and Takeoffs' button is clicked in the Flooring Extra Rules Editor Page
	Then the Change Plans and Takeoffs dialog is displayed in the Flooring Extra Rules Editor Page
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans - New
@tc:2215 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_FloorPlan_New
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the 'New' button is clicked in the Floor Plan List page
	Then the Community Floor Plan Editor page is loaded 
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans - Edit
@tc:2216 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_FloorPlan_Edit
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
	Then the Community Floor Plan Editor page is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans - Edit - Upload New
#151
@tc:2217 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_FloorPlan_Edit_uploadNewTrcerDiag
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
		And the 'Upload New' link is clikced in the Community Floor Plan Editor page
	Then A new window for uploading new tracer diagram to the community floor plan editor page is displayed
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans - Edit - Upload New
@tc:2218 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_FloorPlan_Edit_Update Image link
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
		And the 'Update Image' link is clicked for the first diagram listed in the Community Floor Plan Editor page
	Then A new window for uploading new tracer diagram to the community floor plan editor page is displayed
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans - Edit - Import Diagram
@tc:2219 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_FloorPlan_Edit_ImportTrcerDiag
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
		And the 'Import Diagrams' link is clikced in the Community Floor Plan Editor page
	Then A new window for importing tracer diagrams to the community floor plan editor page is displayed
Examples:
|Community_Name  | 
|Westford 3s PH 2|
         			   
#CM - Open - Floor Plans - Edit - Edit Diagram
@tc:2220 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_FloorPlan_Edit_Edit_TrcerDiag
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
		And the 'Edit' link is clicked for the first diagram listed in the Community Floor Plan Editor page
	Then A Tracer diagram editor window is displayed for the floor plan
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans - Edit - Create Diagram
@tc:2221 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_FloorPlan_Edit_Create_TrcerDiag
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the 'Edit' button is clicked for the first plan listed in the Floor Plan List page
		And the 'Create Diagram' link is clicked for the first background Image listed in the Community Floor Plan Editor page
	Then A Tracer diagram editor window is displayed for the floor plan
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  - Copy
@tc:2222 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_FloorPlan_Copy
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the Copy button is clicked in the Community Floor Plan list page
	Then the Floor Plan Copy page for the community is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  - Rooms
@tc:2223 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_FloorPlan_Rooms
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the 'Rooms' button is clicked for the first plan listed in the Floor Plan List page
	Then the room editor page for the Community floor plan is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  - Rooms - Add New Room
@tc:2224 @clickthrough @bvt @wip      
Scenario Outline:  Verify_Comm_FloorPlan_Rooms_AddNewRm
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the 'Rooms' button is clicked for the first plan listed in the Floor Plan List page
		And the Add New Room button is clicked in the Room editor page for the community floor plan
	Then A new row is added in the Room editor page of the community floor plan 
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - Flooring Take off
@tc:2225 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_FloorPlan_Flring_TakeOffs_pg
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	 	And the takeoff option in the Flooring drop down of the first floor plan listed is clicked
	Then the takeoff page for the community floor plan is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - Flooring Take off - Allowance Comparison
@tc:2226 @clickthrough @bvt      
Scenario Outline:  Verify_Comm_FloorPlan_FlringTakeoffs_AllwnceComparison
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	    And the takeoff option in the Flooring drop down of the first floor plan listed is clicked
		And the 'Allowance Comparison' button is clicked in the commpunity floorplan Takeoffs page
	Then the Allowance Comparison modal is displayed in the Community floorplan Takeoffs page
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - Flooring Take off - Edit Rule
@tc:2227 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_FloorPlan_FlringTakeoffs_editRule
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	    And the takeoff option in the Flooring drop down of the first floor plan listed is clicked
		And the edit rule button is clicked for a randomly selected room in the community floorplan takeoff page
	Then the Edit Takeoff Extra Rule modal is displayed in the community floorplan takeoff page
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - Flooring Take off - Add Takeoff
@tc:2228 @clickthrough @bvt @wip      
Scenario Outline:  Verify_Comm_FloorPlan_FlringTakeoffs_addTakeOff
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	    And the takeoff option in the Flooring drop down of the first floor plan listed is clicked
		And the Add Takeoff button is clicked in the community flooring takeoff page
	Then a new row is added to the takeoff table of the community flooring takeoff page
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - Flooring Take off - Alternate room configuration page  
#19
@tc:2229 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_FloorPlan_FlringTakeoffs_Alternate room Configuration page
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	    And the takeoff option in the Flooring drop down of the first floor plan listed is clicked
		And the 'Alternate Room Configuration' button is clicked in the Community floor plan take off page
	Then The Alternate Room Configuration page of the community floor plan is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - Flooring Control 
#159
@tc:2230 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_FloorPlan_Flooring_Control
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the Control option in the Flooring drop down of the first floor plan listed is clicked
	Then Product control By Area page of the selected Community floor plan is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - Window Treatmnt - import temlate
#165
@tc:2232 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_FloorPlan_Window_Trtmnt_ImportTmplt
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the Import Template option in the Window Treatments drop down of the first floor plan listed is clicked
	Then the Import Window Treatement Template modal is displayed in the Community floorplan list page
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans - CW Structure 
#161
@tc:2233 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_FloorPlan_CW Strucutre_Page
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	 	And the 'Structure' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
	Then the community Counter and Wall structure page for the floor plan is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - CW Structure - Copy Area
#152
@tc:2234 @clickthrough @bvt     
 Scenario Outline:  Verify_Comm_FloorPlan_CW Strucutre_Page_copyAreaModal
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	#	And User navigates to the Community CW structure page for floor plan named testPlan2
		And the 'Structure' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
		And all the rooms are expanded in the community CW structure page
		And the copy button for the first area displayed is clicked in the community CW structure page
	Then the modal for copying area is displayed in the community CW structure page
Examples:
|Community_Name  | 
|Westford 3s PH 2|

# #CM - Open - Floor Plans  -  - CW Structure - copy structure/detail
# #171
# @tc:2235 @clickthrough @bvt   @wip @q1   
# Scenario Outline:  Verify_Comm_FloorPlan_CW Strucutre_Page_copy Structure/detail bttn
# 	Given HDS Home page is displayed
# 		And Communities page link under Community Management Menu is clicked
# 	When User opens community named <Community_Name>
# 		And User clicks on Floor Plan Link under Community Management
# 		And User navigates to the Community CW structure page for floor plan
# 		And the Copy Structure or Detail button is clicked in the community CW structure page
# 	Then the Floor Plan Copy page for the community is loaded
# Examples:
# |Community_Name  | 
# |Westford 3s PH 2|

#CM - Open - Floor Plans  -  - CW Structure - Expand All Rooms
#149
@tc:2236 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_FloorPlan_CW Strucutre_Page_ExpandAllRooms
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the 'Structure' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
		And all the rooms are expanded in the community CW structure page
	Then all the rooms in the CW community strucutre page are expanded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - CW Structure - Collapse All Rooms
#129
@tc:2237 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_FloorPlan_CW Strucutre_Page_CollapseAllRooms
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And the 'Structure' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
		And all the rooms are expanded in the community CW structure page
		And the Collapse All button is clicked in the CW community strucutre page
	Then all the rooms in the CW community strucutre page are collapsed
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - CW Structure - Add New Room
#162
@tc:2238 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_FloorPlan_CW Strucutre_Pg_AddNewRoom
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	    And the 'Structure' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
	 	And the 'Add New Room' button is clicked in the Community CW Strucutre page
	 Then the modal for adding new room to the Community CW structure page is displayed
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - CW Structure -Copy Structure/Detail
#163
@tc:2239 @clickthrough @bvt     
Scenario:  Verify_Comm_FloorPlan_CW Details_Page
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	 	And the 'Details' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
	 Then the community Counter and Wall details page for the floor plan is loaded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - CW Details - Expand All Rooms
#164
@tc:2240 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_FloorPlan_CW Details_Page ExpandAll
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	    And the 'Details' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
	 	And the Expand All Rooms button is clicked in the CW community details page
	Then all the rooms in the CW community details page are expanded
Examples:
|Community_Name  | 
|Westford 3s PH 2|

#CM - Open - Floor Plans  -  - CW Details - Collapse All Rooms
#136
@tc:2241 @clickthrough @bvt     
Scenario Outline:  Verify_Comm_FloorPlan_CW Details_Page Collapse All
	Given HDS Home page is displayed
		And Communities page link under Community Management Menu is clicked
	When User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
	    And the 'Details' option in the Counter and Wall drop down of the first floor plan listed in the community floor plan page is clicked
	 	And the Expand All Rooms button is clicked in the CW community details page
	 	And the collapse All button is clicked in the CW community details page
	Then all the rooms in the CW community details page are collapsed
Examples:
|Community_Name  | 
|Westford 3s PH 2|
