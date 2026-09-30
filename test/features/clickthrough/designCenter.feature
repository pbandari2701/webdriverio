@test
Feature: BVT Click Through Functionality of HDS application

    Feature Description "This feature validate the Business Critical Functionality of the HDS Application"

Background: Pre Login as HDS Admin
    Given I am logged in to HDS as a Admin

# #=====================DESIGN CENTER=======================================
@tc:2132 @clickthrough @bvt
Scenario: Verify_DC_Communities_page  
	Given HDS Home page is displayed
	When  Communities page link under Design Center Menu is clicked
	Then  Communities page of the Design Center Menu is loaded

@tc:2133 @clickthrough @bvt
#Communities - Open
Scenario: Verify_DC_Communities_page_Open  
	Given HDS Home page is displayed
		And Communities page link under Design Center Menu is clicked
	When the open button is clicked for Bella Fiore-25522250000 Community in the Design Center Communities list page
	Then the design center community home page is loaded

@tc:2134 @clickthrough @bvt
#Commission Forms  18
Scenario: Verify_DC_CommissionForm page 
	Given HDS Home page is displayed
	When  Commission Forms page link under Design Center Menu is clicked
	Then  the design center Commission Form page is loaded 

@tc:2135 @clickthrough @bvt
#Communities - Open - Home Sites
Scenario: Verify_DC_Communities_page_Open_Homesites_list_page
	Given HDS Home page is displayed
		And Communities page link under Design Center Menu is clicked
		And the open button is clicked for Bella Fiore-25522250000 Community in the Design Center Communities list page
	When the Homesite setup link is clikced in the design center community home page
	Then the Homesite list page for the  design center community is loaded


#Communities - Open - Home Sites - New
@tc:2135 @clickthrough @bvt
Scenario: Verify_DC_Communities_page_Open_Homesites_New_bttn
	Given HDS Home page is displayed
		And Communities page link under Design Center Menu is clicked
		And the open button is clicked for Bella Fiore-25522250000 Community in the Design Center Communities list page
		And the Homesite setup link is clikced in the design center community home page
	When the New button is clikced in the design center Community Homesite list page
	Then the Homesite editor or information page for the design center community homesite is loaded
	Then ignore Homesite unsaved alert message 

@tc:2136 @clickthrough @bvt
#Communities - Open - Home Sites - Open
Scenario: Verify_DC_Communities_page_Open_Homesites_editor_page
	Given HDS Home page is displayed
		And Communities page link under Design Center Menu is clicked
		And the open button is clicked for Bella Fiore-25522250000 Community in the Design Center Communities list page
		And the Homesite setup link is clikced in the design center community home page
	When the Edit button is clikced for a randomly selected homesite in the design center Community Homesite list page
	Then the Homesite editor or information page for the design center community homesite is loaded

@tc:2137 @clickthrough @bvt
Scenario: Verify_DC_Buyers_page  
	Given HDS Home page is displayed
	When  Buyers page link under Design Center Menu is clicked
	Then  the Buyers list page is loaded


#Buyers -  New 
#190
@tc:2138 @clickthrough @bvt
Scenario: Verify_DC_Buyers_page_New_bttn
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When the New button is clicked in the Buyers List Page
	Then  The buyers info page loaded

@tc:2139 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Info_Page
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
	Then  The buyers info page loaded
Examples: 
 | Buyer_Name   | Community_Name 		  |
 |autotest 		| Westford 3s PH 2        |

 @tc:2140 @clickthrough @bvt
 Scenario Outline:  Verify_DC_Buyers_Info_Page_EstMoPmt_bttn
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
	   And the Estimate Monthly Payment button is clicked in the Buyer's Info page
	Then a new window for displaying the buyer's monthly payment is loaded
Examples: 
 | Buyer_Name   | Community_Name 		  |
 |autotest 		| Westford 3s PH 2        |


 @tc:2141 @clickthrough @bvt
 Scenario Outline:  Verify_DC_Buyers_Info_Page_Additional_Buyer_info_Bttn
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
	   And the Add Additional Buyer button is clicked in the Buyer info Page
	Then the Additional Buyer Info page is loaded 
Examples: 
 | Buyer_Name   | Community_Name		  |
 |autotest 		| Westford 3s PH 2        |


#Buyers - Open - Update Costs
#206
 @tc:2142 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_UPdateCost
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
	   And the Update Costs button under Counter and Wall Serivce offering is clicked in the Buyer's info page
	Then the Update Costs modal is dislayed in the buyer's info page
Examples: 
 | Buyer_Name   | Community_Name 		  |
 |autotest 		| Westford 3s PH 2        |


#Buyers - Open - View Quote (flooring)
#Buyers - Open - View Quote (CW)
#Buyers - Open - View Quote (LSO)
 @tc:2143 @clickthrough @bvt
Scenario Outline:  Verify_DC_BuyerInfo_viewQT_bttn
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the view Quote Button is clicked for <Service_Offering> service offering in the buyer info page
	Then The Buyers Report page is loaded for <Service_Offering>
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Flooring           |autotest 		| Westford 3s PH 2        |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 
 | Lifestyle Options  |autotest 		| Westford 3s PH 2        | 

 @tc:2144 @clickthrough @bvt @tip
Scenario Outline:  Verify_DC_Buyers_Open_viewQT_flooring_Tracer Diagram link
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the view Quote Button is clicked for Flooring service offering in the buyer info page
    	And the link for the first tracer diagram listed is clicked in the Buyer Report page
	Then A new window for displaying tracer diagram selected from Buyer Report page is loaded
Examples: 
 | Buyer_Name   | Community_Name 		  |
 |autotest 		| Westford 3s PH 2        |

#Buyers - Open - (Current Quote) - [Flooring] 200
#Buyers - Open - (Current Quote) - CW  137
#Buyers - Open - (Current Quote) - LSO  170
 @tc:2145 @clickthrough @bvt @tip
 Scenario Outline:  Verify_DC_BuyerInfo_current Quotes
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
	   And the Current Quote link for <Service_Offering> service offering is clicked in the buyer info page
	Then The Buyers Report page is loaded for <Service_Offering>
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Flooring           |autotest 		| Westford 3s PH 2        |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 
 | Lifestyle Options  |autotest 		| Westford 3s PH 2        | 

# #Buyers - Open - Flooring - 
# #  Buyers - Open - CW
# #  Buyers - Open - Lifestyle Options
 @tc:2146 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_SvcOfferingPg
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
	Then the <Service_Offering> scenario list or Options selector page loaded
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Flooring           |autotest 		| Westford 3s PH 2        |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 
 | Lifestyle Options  |autotest 		| Westford 3s PH 2        | 



#Buyers - Open - Flooring - New
#207
 @tc:2147 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_Flooring_New
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
	 	And the 'New' button is clicked in the Flooring scenario list page
	 Then the flooring selector page is displayed
Examples: 
 | Service_Offering | Buyer_Name    | Community_Name          |
 | Flooring         | autotest		| Westford 3s PH 2 		  |

  @tc:2148 @clickthrough @bvt
  Scenario Outline:  Verify_DC_Buyers_Open_Flooring_selection_link
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And User Navigates to The Buyer's Report page in Design Center
		And user clicks on the Selections link under the Flooring link in the Design Center Menu
	Then the flooring selector page is displayed in the design center
Examples: 
 | Service_Offering | Buyer_Name    | Community_Name          |
 | Flooring         | autotest		| Westford 3s PH 2 		  |

#  Buyers - Open - Flooring - Open -  Print prelim Quote
#215
#  Buyers - Open - CW - Open -  Print prelim Quote
#  Buyers - Open - LifestyleOptions -  Print prelim Quote
@tc:2149 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_SvcOfferingPg_PrintPrelim
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
	 When the Print preliminary Quote button in the design scenario or option selector page is clicked for <Service_Offering>
	Then The Buyers Report page is loaded for <Service_Offering>
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Flooring           |autotest 		| Westford 3s PH 2        |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 
 | Lifestyle Options  |autotest 		| Westford 3s PH 2        | 


  #Buyers - Open - Flooring - Open - Print
  #209
 @tc:2150 @clickthrough @bvt  @wip
 Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_CW_CalcBrdReport
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
	 	And the Calculator Breakdown Report button is clicked in the Buyer's flooring selector page for Flooring
	#  Then the <Service_Offering> Selector Reports page is loaded
Examples: 
 | Service_Offering | Buyer_Name    | Community_Name          | 
 | Flooring         | autotest		| Westford 3s PH 2 		  |

# #Buyers - Open - Flooring - Open - Print - calc. brkdn rprt
# #212
@tc:2151 @clickthrough @bvt  @wip @q
 Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_CalcBrkdReport_link
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And the Calculator Breakdown Report button is clicked in the Buyer's flooring selector page for Flooring
	#  Then User Clicks on the Calculator Breakdown Report Link for <Service_Offering> 
Examples: 
 | Service_Offering | Buyer_Name    | Community_Name          | 
 | Flooring         | autotest		| Westford 3s PH 2 		  |


#Buyers - Open - Flooring - Open - Print - room by room selctor report
#210
# @tc:2152 @clickthrough @bvt @q

# Scenario Outline:  Verify_DC_Buyers_Open_CW_Open_Print_room by room Slctr report
# 	Given HDS Home page is displayed
# 		And Buyers page link under Design Center Menu is clicked
# 	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
# 		And the link for the <Service_Offering> scenario list or Options selector page is clicked
# 		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
# 		And the Calculator Breakdown Report button is clicked in the Buyer's flooring selector page
	# When User Clicks on the Room by Room Selector Report link
	# Then the Report Viewer page of the buyer is loaded
Examples: 
 | Service_Offering | Buyer_Name     | Community_Name         | 
 | Counter          | autotest	     | Westford 3s PH 2       | 

@tc:2153 @clickthrough @bvt 
Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_TracerDiagram link
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the Flooring scenario list or Options selector page is clicked
		And The active Flooring design scenario is opened if Svc Offering is Flooring or CW
    	And the link for the first diagram listed is clicked in the Buyer's flooring selector page
	Then A new window for displaying tracer diagram selected from Buyer's flooring selector page is loaded
Examples: 
 | Service_Offering | Buyer_Name    | Community_Name          | 
 | Flooring         | autotest		| Westford 3s PH 2 		  |


 #Buyers - Open - Flooring - Open - Open (Room) 
 @tc:2154 @clickthrough @bvt
 Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor 
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		When the link for the room named <RoomName> is clicked in the Flooring Selector page
	 Then the flooring room editor page is displayed
Examples: 
 | Service_Offering | Buyer_Name    | Community_Name             | RoomName           |
 | Flooring         | autotest 		| Westford 3s PH 2    		 | Whole House Carpet |

#Buyers - Open - Flooring - Open - Open (Room) - Modify Flooring Selection
#Buyers - Open - Flooring - Open - Open (Room) - Additional Items
#Buyers - Open - Flooring - Open - Open (Room) - Room Standards
#Buyers - Open - Flooring - Open - Open (Room) - Adjustments
#Buyers - Open - Flooring - Open - Open (Room) - Flooring Extras
@tc:2155 @clickthrough @bvt 
 Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_Tabs
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And flooring Room Editor page for the room named <RoomName> is opened
	 	And the <Tab> tab is clicked in the flooring room editor page
	 Then the panel for the <Tab> is displayed in the flooring room editor page
Examples: 
| Tab                       | Service_Offering | Buyer_Name     | Community_Name         | RoomName    |
| Modify Flooring Selection | Flooring         | autotest 	    | Westford 3s PH 2		 | diningroom  |
| Additional Items          | Flooring         | autotest 		| Westford 3s PH 2		 | diningroom  |
| Room Standards            | Flooring         | autotest 		| Westford 3s PH 2    	 | diningroom  |
| Adjustments               | Flooring         | autotest 		| Westford 3s PH 2 		 | diningroom  |
| Flooring Extras           | Flooring         | autotest 		| Westford 3s PH 2 		 | diningroom  |

@tc:2156 @clickthrough @bvt 
 Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_Add New Additional items button
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And flooring Room Editor page for the room named <RoomName> is opened
		And the <Tab> tab is clicked in the flooring room editor page
	 	And the Add New Item button is clicked in the Additional Items tab of the flooring room editor page
	 Then the Additional Items Editor field is displayed in the flooring room editor page

Examples: 
| Tab               | Service_Offering | Buyer_Name    | Community_Name          | RoomName			  |
| Additional Items  | Flooring         | autotest 	   | Westford 3s PH 2		 | Whole House Carpet |



@tc:2157 @clickthrough @bvt 
 Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_Add New Additional items_Cancel button
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And flooring Room Editor page for the room named <RoomName> is opened
		And the <Tab> tab is clicked in the flooring room editor page
		And the Add New Item button is clicked in the Additional Items tab of the flooring room editor page
	    And the Cancel button is clicked in the Additional Items tab of the flooring room editor page
	Then the Additional Items Editor field is not displayed in the flooring room editor page
Examples: 
| Tab              | Service_Offering | Buyer_Name    | Community_Name          | RoomName			  |
| Additional Items | Flooring         | autotest 	  |  Westford 3s PH 2 		| Whole House Carpet  |


 @tc:2158 @clickthrough @bvt 
 Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_Add Adjustments button
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And flooring Room Editor page for the room named <RoomName> is opened
		And the <Tab> tab is clicked in the flooring room editor page
		And the Add New Adjustment button is clicked in the Adjustments tab of the flooring room editor page
	 Then the Adjustment Editor field is displayed in the flooring room editor page

Examples: 
| Tab         | Service_Offering | Buyer_Name    | Community_Name          | RoomName         |
| Adjustments | Flooring         | autotest 	 |  Westford 3s PH 2	   |Whole House Carpet|



 @tc:2159 @clickthrough @bvt 
 Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_Add New Adjustment_Cancel button
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And flooring Room Editor page for the room named <RoomName> is opened
		And the <Tab> tab is clicked in the flooring room editor page
		And the Add New Adjustment button is clicked in the Adjustments tab of the flooring room editor page
	 	And the Cancel button is clicked in the Adjustments tab of the flooring room editor page
	 Then the Adjustments Editor field is not displayed in the flooring room editor page

Examples: 
| Tab         | Service_Offering | Buyer_Name    | Community_Name          | RoomName			|
| Adjustments | Flooring         | autotest 	 |  Westford 3s PH 2 	   | Whole House Carpet |

 #Buyers - Open - Flooring - Open - Open (Room) - - Select From Prod List (prod search)
  @tc:2160 @clickthrough @bvt 
Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_selectFromProdlist
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And flooring Room Editor page for the room named <RoomName> is opened
	 When the 'Select From Product List' button is clicked in the flooring room editor page
	 Then the Product search modal in the flooring room editor page is displayed
Examples: 
 | Service_Offering | Buyer_Name    | Community_Name             | RoomName           |
 | Flooring         | autotest 	 	|  Westford 3s PH 2    		 | Whole House Carpet |


# Buyers - Open - Flooring - Open - Open (Room) - - search product (go button)
@tc:2161 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_QuickProdSearchBttn
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And flooring Room Editor page for the room named <RoomName> is opened
	 	And the 'Go' button for quick product search is clicked in the flooring room editor page
	 Then the Product search modal in the flooring room editor page is displayed
Examples: 
 | Service_Offering | Buyer_Name    | Community_Name             | RoomName           |
 | Flooring         | autotest 	 	|  Westford 3s PH 2    		 | Whole House Carpet |


# Buyers - Open - Flooring - Open - Open (Room) - - search product (go button) - select product
@tc:2162 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_Flooring_Open_RmEditor_QuickPrdSearch_addProd
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And flooring Room Editor page for the room named <RoomName> is opened
		And the 'Go' button for quick product search is clicked in the flooring room editor page
	 	And A product is randmoly selected for upgrade in the the flooring room editor product search modal
	#  Then the product for the room is changed to the selected product in the flooring room editor page
Examples: 
 | Service_Offering | Buyer_Name   | Community_Name          | RoomName           |
 | Flooring         | autotest 	   |  Westford 3s PH 2 		 | Whole House Carpet |

# # Buyers - Open - CW - Open
# # Buyers - Open - Flooring - Open
@tc:2163 @clickthrough @bvt
Scenario Outline:  Verify_DC_SvcOffring_Open_a_Scenario
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
	When The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
	Then The active <Service_Offering> design scenario page is opened
		
Examples: 
 | Service_Offering | Buyer_Name   | Community_Name	    	|
 | Flooring         | autotest 	   |  Westford 3s PH 2   	|
 | Counter & Wall   | autotest 	   |  Westford 3s PH 2		|


#  #143
@tc:2164 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_CW_overviewPage_Copy modal
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And the 'Copy' button is clicked in the CW scenario overview page
	Then a modal for copying the design scenario is displayed in the CW scenario overview page
Examples: 
 | Service_Offering | Buyer_Name   | Community_Name	    	|
 | Counter & Wall   | autotest 	   |  Westford 3s PH 2		|

# #  Buyers - Open - CW- New
# #Note: has an order 0 Afterscenario step associated in 'BVT_tests'
@tc:2165 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_CW_NewScenario
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And the 'New' button is clicked in the Counter and Wall scenario list page
	Then the 'Create New Scenario' modal is displayed in the Counter and Wall Scenario list page
Examples: 
 | Service_Offering | Buyer_Name    | Community_Name          | 
 | Counter & Wall   | autotest 	    |  Westford 3s PH 2		  |

# # Buyers - Open - CW- view latest quote
# # Buyers - Open - Lifestyle Options - View latest quote
# # Buyers - Open - Flooring - View Latest Quote
 @tc:2166 @clickthrough @bvt
 Scenario Outline:  Verify_DC_Buyers_Open_SvcOff_ViewLatestQt
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And the 'View Latest Quote' button is clicked in the <Service_Offering> scenario list or option selector page
	Then The Buyers Report page is loaded for <Service_Offering>
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Flooring           |autotest 		| Westford 3s PH 2        |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 
 | Lifestyle Options  |autotest 		| Westford 3s PH 2        | 

# #Buyers - Open - View Quote History (flooring)
# #Buyers - Open - View Quote History (cw)
# #Buyers - Open - View Quote History (lifestyle options)
 @tc:2167 @clickthrough @bvt
 Scenario Outline:  Verify_DC_Buyers_Open_SvcOff_ViewQtHistory
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the 'View Quote History' button is clicked in the buyer info page for <Service_Offering> service offering
	Then the Quote History dialog box for <Service_Offering> service offering is displayed in the Buyer info page
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Flooring           |autotest 		| Westford 3s PH 2        |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 
 | Lifestyle Options  |autotest 		| Westford 3s PH 2        | 

#Buyers - Open - View Quote History -view Link (flooring)
#Buyers - Open - View Quote History -view Link (cw)
#Buyers - Open - View Quote History -view Link (lifestyle options)
 @tc:2168 @clickthrough @bvt
 Scenario Outline:  Verify_DC_Buyers_Open_SvcOff_ViewQtHistory_View Link
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the 'View Quote History' button is clicked in the buyer info page for <Service_Offering> service offering
		And the 'View' link is clicked in Quote History dialog box for the first quote listed in the  Buyer info page
	Then The Buyers Report page is loaded for <Service_Offering>
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Flooring           |autotest 		| Westford 3s PH 2        |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 
 | Lifestyle Options  |autotest 		| Westford 3s PH 2        | 


#  Buyers - Open - Reports 
  @tc:2169 @clickthrough @bvt
  Scenario Outline:  Verify_DC_Buyers_Open_reports_Page
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And User Navigates to The Buyer's Report page in DC
	Then the Buyer's report page loads successfully
Examples: 
| Buyer_Name    | Community_Name             | 
| autotest      | Westford 3s PH 2    		 |


#  #Buyers - Open - Reports - Options Details (Preliminary)
#  #Buyers - Open - Reports - Flooring Selector (Preliminary)
#  #Buyers - Open - Reports - Design Summary Buyer (Preliminary)6
  @tc:2170 @clickthrough @bvt
  Scenario Outline:  Verify_DC_Buyers_Open_reports_report_links
	Given HDS Home page is displayed
		And Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And User Navigates to The Buyer's Report page in DC
		And the <Report_Type> link is cliked in the buyer's report page
	Then the <Expected_Page> page of the selected <Report_Type> of the Buyer is loaded
Examples: 
| Report_Type                                   | Expected_Page                         | Community_Name				| Buyer_Name   |
#| Option Details_Preliminary                    | Report Viewer                        | 0AutmtionTier1_Dont_delete   | AutoTstBuyer |
#| Flooring Selector_Preliminary                 | Report Viewer                        | 0AutmtionTier1_Dont_delete   | AutoTstBuyer |
# | Design Summary Buyer_Preliminary              | Configure Buyer Summary Report       | Bella Fiore-25522250000	   | Automation101 |
# | Sales Calculator Summary_Preliminary		    | sales calculator summary             | Bella Fiore-25522250000       | Automation101 |
# | Flooring Quote Calculator Breakdown           | flooring calculator breakdown        | Bella Fiore-25522250000	   | Automation101 |
# | Counter and Wall Quote Calculator Breakdown   | counterandwall calculator breakdown  | Bella Fiore-25522250000       | Automation101 |
# | Job Report Material and Labor Breakdown_Quote | Configure Job Detail Report          | Bella Fiore-25522250000	   | Automation101 |
# | Design Summary Job_Quote                      | Configure Job Summary Report - HDS   | Bella Fiore-25522250000	   | Automation101 |
# | Design Summary Participant_Quote              | Configure Participant Summary Report | Bella Fiore-25522250000	   | Automation101 |
# | Design Summary Buyer_Quote                    | Configure Buyer Summary Report       | Bella Fiore-25522250000	   | Automation101 |
# | Room Allowance Summary By Category_Quote      | Quote Summary By Category Report     | Bella Fiore-25522250000	   | Automation101 |
  |hypDesignBuyerSummary						|Configure Buyer Summary Report - HDS			|Westford 3s PH 2				|autotest|
  |hypSaleCalculatorSummary						|SalesCalculatorSummary(Flooring Design_315159)|Westford 3s PH 2				|autotest|
  |hypCalculatorBreakdown						|CalculatorBreakdown(Job_159338)				|Westford 3s PH 2				|autotest|
  |hypCWCalculatorBreakdownReport	|CalculatorBreakdownWallQuote(Counter & Wall Design_159338)|Westford 3s PH 2				|autotest|
  |hypJobReport									|HDS (QA) - Configure Job Detail Report - HDS |Westford 3s PH 2				|autotest|
  |hypDesignJobSummary							|HDS (QA) - Configure Job Summary Report - HDS|Westford 3s PH 2				|autotest|
  |hypDesignBuilderSummary						|Configure Participant Summary Report - HDS	  |Westford 3s PH 2				|autotest|
  |hypDesignBuyerSummaryqd						|Configure Buyer Summary Report - HDS		  |Westford 3s PH 2				|autotest|
  |hypQuoteSummaryByCategoryReport				|Quote Summary By Category Report - HDS		  |Westford 3s PH 2				|autotest|



 #Buyers - Open -Reports - Flooring Quote Calculator Breakdown




#Buyers - Open - CW - Open -  Scenario details page (open area)
@tc:2171 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_CW_scneario_details_page
	Given Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
	 	And the link for one of the areas listed in the CW Scenario overview page is clicked
	Then the CW design scenario details page is loaded
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 


#Buyers - Open - CW - Open -  Scenario details page (open area) - Change Pattern
#243
@tc:2172 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_CW_details_page_pattern_bttn
	Given Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And the link for one of the areas listed in the CW Scenario overview page is clicked
		And the Change Pattern button is clicked in the CW design scenario details page
	Then the Pattern selection modal is displayed in the CW scenario details page 
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 


# #Buyers - Open - CW - Open -  Scenario details page (open area) - Change Grout
@tc:2173 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_CW_details_page_Change_Grout_bttn
	Given Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And the link for one of the areas listed in the CW Scenario overview page is clicked
		And the select Grout buttn is clicked in the CW design scenario details page
	Then the Grout selection modal is displayed in the CW scenario details page
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 

# #Buyers - Open - CW - Open -  Scenario details page (open area) - Opt. Design Feat. - 
@tc:2174 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_CW_details_page_Opt_Design_Feature_bttn
	Given Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And the link for one of the areas listed in the CW Scenario overview page is clicked
		And the Optional Design Feature buttn is clicked in the CW design scenario details page
	Then the Optional Design Feature selection modal is displayed in the CW scenario details page
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 

# #Buyers - Open - CW - Open -  Scenario details page (open area) - Speciality Items
@tc:2175 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_CW_details_page_Specialty_Items_bttn
	Given Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And the link for one of the areas listed in the CW Scenario overview page is clicked
		And the Speciality Items buttn is clicked in the CW design scenario details page
	Then the Speciality Items selection modal is displayed in the CW scenario details page 
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 

# #Buyers - Open - CW - Open -  Scenario details page (open area) - Extras
@tc:2176 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_CW_details_page_Extras_bttn
	Given Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And the link for one of the areas listed in the CW Scenario overview page is clicked
		And the Extras buttn is clicked in the CW design scenario details page
	Then the Optional Extras selection modal is displayed in the CW scenario details page
Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 
 

# #Buyers - Open - CW - Open -  Scenario details page (open area) - Adjustments
@tc:2177 @clickthrough @bvt
Scenario:  Verify_DC_Buyers_Open_CW_details_page_Adjustments_bttn
	Given Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And the link for one of the areas listed in the CW Scenario overview page is clicked
		And the Adjustments buttn is clicked in the CW design scenario details page
	Then the Adjustments modal is displayed in the CW scenario details page
 Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 

#Buyers - Open - CW - Open -  Scenario details page (open area) - Design Feat. Search
@tc:2178 @clickthrough @bvt
Scenario Outline:  Verify_DC_Buyers_Open_CW_details_page_design_Feature_Search_bttn
	Given Buyers page link under Design Center Menu is clicked
	When A buyer with the following attributes is opened: <Community_Name> and <Buyer_Name>
		And the link for the <Service_Offering> scenario list or Options selector page is clicked
		And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		And the link for one of the areas listed in the CW Scenario overview page is clicked
		And the Search button for any one of the required design features is clicked in the CW design scenario details page
	Then the Product Search modal is displayed in the CW scenario details page 
 Examples: 
 | Service_Offering   | Buyer_Name      | Community_Name          |
 | Counter & Wall     |autotest 		| Westford 3s PH 2        | 
