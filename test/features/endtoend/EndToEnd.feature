Feature: End To End Functionality of HDS application
	    Feature Description "This feature validate the Business Critical Functionality of the HDS Application"

Background: Pre Login as HDS Admin
    Given I am logged in to HDS as a Admin
@e2e
Scenario: 0101 Tier 2 Community Set-up to Generating Flooring and CW Scenario Quote
#CREATE NEW COMMUNITY - builder by select element in ComHmP
	Given A new community is created with the following attribute
	
	 | attributes     | value			|	
	 | community_Name |Jan26_2022_102_11|
	 | Community_id   |		 		   	|
	 | builder        |	Meritage Homes	|
	 | designer       |					|
	 | sales_Mngr     |					|
	 | Proj_Mngr      |					| 
	 #EfficiencyModeNo_Auto
	And Wall Tile is set as a required service offering and use of HDS Custom calculator is applied
	And LifeStyle Options is set as a required Service Offering for the community
	And Lifestyle Options cuttoff date Appliances with display order 1 is added to the community
	
#ADD STANDARD PRODUCTS
	 And Flooring products with the following attributes are added as standards

	 | ProdCategory			 | ProductName		| NSIsellPrice | Sell_Price |
	 | Carpet				 |BERKSHIRE			| 6.01         | 6.12       |
	 | Tile Square/Geometric | CANVAS 24"X24"	| 2.01         | 2.12       |
	 #CITYSCAPE   CANVAS
	 And A pad product with the following attribute is added as a standard
	 | attributes    | value |
	 | ProdCategory  | Pad   |
	 | ProductName   |       |
	 | BackOut_Price |1.02   |
	And Community Flooring Group setup Page is opened and saved

#CREATE FLOOR PLAN
	And A new floor plan for a community is created with the following attributes
	 | attributes      | value    |
	 | Flr_Plan_Number | 1234     |
	 | Flr_Plan_Name   | testPlan1|
	 | Flr_Plan_SF     | 2000     |
	 | Base_Home_Price |          |

#CREATE ROOMS
   And Rooms with the following attributes are added to the floor plan
	 | Floor_Plan_No | Rooom_Name    | Square_footage   |
	 | 1234        |  bathroom       | 200              | 
	 | 1234        |  bedroom        | 400              |
	 | 1234        |  kitchen        | 400              |
	 | 1234        |  masterBR       | 400              |
	 | 1234        |  livingroom     | 800              |
   And newly created floor plan 1234 opens
   And optional rooms for Bathroom and livingroom is selected
   
	
#CREATE TAKEOFFS
	And the following rooms for floor plan number 1234 are set with standard products and given take-off amounts as follows.
	 | Rooms      | Prod_Category        | Stnd_Width | takeOff_Amount |
	 | WHC        | Carpet				 | 12'        | 84             |
	 | bathroom   | Carpet               |            | 17             |
	 | bedroom    | Carpet				 |            | 34             |
	 | kitchen    | Carpet				 |            | 34             |
	 | masterBR   | Carpet				 |            | 34             |
	 | livingroom | Tile Square/Geometric|            | 67             |

	And Product Control for floor plan number 1234 is saved by Area for the TakeOff
   And the new room for floor plan number 1234 are set with Alternate Room Configurations
  And Alternate Room Configurations clicked and configure the NonStandard Room
  And the Configured Room from bedroom to GuestRoom named AltRoomTest
   And verified the Configured Room on the Alternate Room Configurations page
  And Counter and Wall Strucutre rooms for floor plan number 1234 are added with the following specifications Second
	 | Room_Name | Room_Type | Area_Name		  | Area_Type | Stnd_Pattern | Alt_Area_type |
	 | bathroom  |           | AlternateBathArea  |           |              |				|
	 | bathroom  |           | bathroomArea		 |           |              |Alternate	   |
	 | bedroom   |           | bedroom1Area		 |           |              | Optional      |
	 | kitchen   |           | kitchenArea		 |           |              |               |
	 | kitchen  |           | AlternateKtArea    |           |              |Alternate	   |
	And the Alternate Room has been configured 

			#Note: null value for a parameter means default selections are kept
	And Allowances and take off amounts for floor plan numbered 1234 are added for each Area in the WT details page per following
	    | Room_Name | Area_Name    | Allwnce_Base | Allwnce_Extra |
	    | kitchen   | kitchenArea  | 15           |               |
	    | bedroom   | bedroom1Area | 20           |               |               
	    | bathroom  | bathroomArea | 15		      |               |   

	And Product Control for floor plan number 1234 is saved by Area for the TakeOff
	
	 
	#CREATE HOMESITE
	Given A new homesite is created with the following attributes
	 | attributes      | value      |
	 | Lot_Number      | tst123     |   
	 | Flr_Plan_Name   |testPlan1   |
	 | Home_Address    |            |


#CREATE BUYER
   And the following buyers are created with their corresponding attributes
	 | First_Name   | Community_name | DesignerName | HomeSiteNumber | PlanName    | BaseHomePrice | BuyerType  | CompleteByDate |
	 | Automation101|                |              |   tst123       | testPlan1   | 400000        | Home Buyer | 10/11/2019   |

#CREATE FLOORING DESIGN SCENARIO and QUOTE
	And A new flooring design scenario is created with the following attributes
	 | attributes           | value        |
	 | Buyer_Name           | AutoTstReactivateQt  |
	 | Design_scenario_Name | testAutoDS   |
	 | Set_as_Active	    | true         | //Instead test if the Active flag is automatically set on the new design

ADD: Select the optional and the alternate rooms

	And Color and grout, if Tile rooms present, are added to all rooms per following
	 | Prod_Category_of_Rooms | color       | grout	|
	 | WHC					  |			    |		|
	 | Tile Square/Geometric         |			    |		| 
		 #if no value passed to color and grout-->they are picked randomly
	And the Add New Item button is clicked in the Additional Items tab of the flooring room editor page bvt
	Then the Additional Items Editor field is displayed in the flooring room editor page 
	And Additional items have been added to the room editor page
	
	When the Add New Adjustment button is clicked in the Adjustments tab of the flooring room editor page bvt
	Then the Adjustment Editor field is displayed in the flooring room editor page 
	And the adjustment has been added to the rooms in the Room Editor page
	And Reason for the Adjustment Editor has been selected to Builder Discount 
	And the Price for the Adjustment Editior has been added and save
	And the new Adjustment has been added and saved
	And Additional Items on the Design Scenario page is confirmed
When User clicks on the create quote button from the flooring selector page for the active design scenario

	Given User Navigates to The Buyer's Report page
		And User navigates to the report configuration page for Design Summary Buyer - Quote Report
	    And User selects Flooring in the Service offering Drop down of the Configuration page for Design Summary Buyer - Quote Report
	When User clicks recalculate button in Configuration page for Design Summary Buyer - Quote Report
    Then A Design Summary Buyer Quote Report for Flooring is successfully generated
	
	Given User Navigates to The Buyer's Report page 
		And User navigates to the report configuration page for Preliminary Design summary report
		#And User elects to group by Category with room list for Preliminary Design summary report
		And User selects Flooring in the Service offering Drop down of the Configuration page for Preliminary Design summary report
	When User clicks recalculate button in Configuration page for Preliminary Design summery report
    Then A Preliminary design summary report is successfully generated for Flooring 

	Given New Counter & Wall Design scenario is created with the following attributes
		 | attributes         | values           |
		 | scenario_Name      | 2testCWScen Auto |
		 | Designer_Name      |                  |
		 | effective_Date     |                  |
		 | is_Active_Scenario | true             |
	Given the alternate configuration button clicked and select the configured room
	
	Given the 'Show Quotability Status' button is clicked in the CW Scenario Overview page
	
	And A grout product and products for all required takeOffs are added and saved in the details page for each of the CW areas listed below Second
	   
	 | Room_Name | Area_Name   |
	 | kitchen   | kitchenArea |
	 | bathroom  | AlternateBathArea |
	 | bedroom   | bedroom1Area | 
	 
	And navigate to adjustment button on the CW Scenario Details page & add a new adjustment
    Given The create quote button is clicked in the Scenario overview page

	Given User Navigates to The Buyer's Report page
	And User navigates to the report configuration page for Design Summary Buyer - Quote Report
    And User selects Counter & Wall in the Service offering Drop down of the Configuration page for Design Summary Buyer - Quote Report
	When User clicks recalculate button in Configuration page for Design Summary Buyer - Quote Report
    Then A Design Summary Buyer Quote Report for Counter & Wall is successfully generated
	
	Given User Navigates to The Buyer's Report page 
		And User navigates to the report configuration page for Preliminary Design summary report
		#And User elects to group by Category with room list for Preliminary Design summary report
		And User selects Counter & Wall in the Service offering Drop down of the Configuration page for Preliminary Design summary report
	When User clicks recalculate button in Configuration page for Preliminary Design summery report
    Then A Preliminary design summary report is successfully generated for Counter & Wall  
Scenario: 0102 Tier 2 Create Community to Create Flooring Quote
#CREATE NEW COMMUNITY
	Given  A new community is created with the following attributes
	 | attributes     | value				|
	 | community_Name |  Jan25_2022_101_12   	|
	 | Community_id   |						|
	 | builder        |						|
	 | designer       |						|
	 | sales_Mngr     |						|
	 | Proj_Mngr      |						|  
#ADD STANDARD PRODUCTS
	 And Flooring products with the following attributes are added as standards

	 | ProdCategory| ProductName    | NSIsellPrice | Sell_Price |
	 | Carpet	   |BETHPAGE        | 6.01         | 6.12       |
	 | Tile Square/Geometric  | CANVAS 24"X24" | 2.01         | 2.12       |
	 And A pad product with the following attribute is added as a standard
	 | attributes    | value				  |
	 | ProdCategory  | Pad					  |
	 | ProductName   |3/8" SAGE 5 LB (SCAL) |
	 | BackOut_Price | 1.02					  |

	And Community Flooring Group setup Page is opened and saved

#CREATE FLOOR PLAN
	And A new floor plan for a community is created with the following attributes
	 | attributes      | value    |
	 | Flr_Plan_Number | 123456   |
	 | Flr_Plan_Name   | testPlan |
	 | Flr_Plan_SF     | 2000     |
	 | Base_Home_Price |          |

#CREATE ROOMS
    And Rooms with the following attributes are added to the floor plan
	 | Floor_Plan_No | Rooom_Name      | Square_footage   |
	 | 123456        |  kitchen        | 400              | 
	 | 123456        |  bedroom       | 400              |
	 | 123456        |  bathroom       | 200              |
	 | 123456        |  livingroom     | 800              |

#CREATE TAKEOFFS
	And the following rooms for floor plan number 123456 are set with standard products and given take-off amounts as follows.
	 | Rooms      | Prod_Category  | Stnd_Width | takeOff_Amount |
	 | WHC        | Carpet         | 12'        | 117            |
	 | bathroom   | Carpet         |            | 17             |
	 | kitchen    | Carpet         |            | 34             |
	 | livingroom | Carpet         |            | 67             |
	 | bedroom    | Tile Square/Geometric     |            | 34             |

	 And Product Control for floor plan number 123456 is saved by Area for the TakeOff
	
#CREATE HOMESITE
	And A new homesite is created with the following attributes
	 | attributes      | value         |
	 | Lot_Number      | Tst123        |   
	 | Flr_Plan_Name   | testPlan      |
	 | Home_Address    |               |
	 #lot type selection is hard-coded to be 'Non-ERP'

#CREATE BUYER
   And the following buyers are created with their corresponding attributes
	 | First_Name    | Community_name | DesignerName | HomeSiteNumber | PlanName | BaseHomePrice | BuyerType | CompleteByDate |
	 | Automation101 |                |              |                |  testPlan| 400000        | Home Buyer|   12/6/2020     |

#CREATE FLOORING DESIGN SCENARIO and QUOTE
	And A new flooring design scenario is created with the following attributes
	 | attributes           | value        |
	 | Buyer_Name           | AutoTstBuyer |
	 | Design_scenario_Name | testAutoDS   |
	 | Set_as_Active	    | true         |

	And Color and grout, if Tile rooms present, are added to all rooms per following
	 | Prod_Category_of_Rooms | color | grout |
	 | WHC					  |       |       |
	 | Tile Square/Geometric  |       |       | 

	When User clicks on the create quote button from the flooring selector page for the active design scenario
	Given User Navigates to The Buyer's Report page
		And User navigates to the report configuration page for Design Summary Buyer - Quote Report
	    And User selects Flooring in the Service offering Drop down of the Configuration page for Design Summary Buyer - Quote Report
	When User clicks recalculate button in Configuration page for Design Summary Buyer - Quote Report
    Then A Design Summary Buyer Quote Report for Flooring is successfully generated
	
	Given User Navigates to The Buyer's Report page 
		And User navigates to the report configuration page for Preliminary Design summary report
		#And User elects to group by Category with room list for Preliminary Design summary report
		And User selects Flooring in the Service offering Drop down of the Configuration page for Preliminary Design summary report
	When User clicks recalculate button in Configuration page for Preliminary Design summery report
    Then A Preliminary design summary report is successfully generated for Flooring
 
Scenario: 0103 Tier 2 Create Community using Community Copy Utility,till Counter & Wall Quote
	Given A community is copied based on the following spedifications
		| attributes           | value                      |
		| Source_Comm          | Bella Fiore-25522250000	|
	#copy items 
		| Available_Products   | true                       |
		| Options              | true                       |
		| FloorPlans           | true                       |
		| Create_New_Comm      | true                       |
	#new Comm attributes  Jan18_2021_100_13
		| New_Comm_name        | Jan25_2021_101_13				|
		| New_Comm_Id          | TstID1                     |
	
	And Creation of new Community and presence of selected copy items in the new community is verified
	And Wall Tile is set as a required service offering and use of HDS Custom calculator is applied
	
	#ADD STANDARD PRODUCTS
	And Flooring products with the following attributes are added as standards
	 | ProdCategory			 | ProductName | NSIsellPrice | Sell_Price |
	 | Carpet				 |             | 6.01         | 6.12       |
	 | Tile Square/Geometric |             | 2.01         | 2.12       |

	And A pad product with the following attribute is added as a standard
	 | attributes    | value |
	 | ProdCategory  | Pad   |
	 | ProductName   |       |
	 | BackOut_Price |1.02   |
	 
	 And Wall Tile products with the following attributes are added as standards
	 | ProdCategory| ProductName |
	 | Tile Plank |			 |
	#CREATE FLOOR PLAN
	And A new floor plan for a community is created with the following attributes
	 | attributes      | value    |
	 | Flr_Plan_Number | 123456   |
	 | Flr_Plan_Name   | Testing123 |
	 | Flr_Plan_SF     | 2000     |
	 | Base_Home_Price |          |
	
	#CREATE ROOMS
   And Rooms with the following attributes are added to the floor plan
	 | Floor_Plan_No | Rooom_Name      | Square_footage   |
	 | 123456        |  bathroom       | 200              | 
	 | 123456        |  bedroom        | 400              |
	 | 123456	     |  bedroomMaster  | 200              |
	 | 123456		 |  kitchen        | 400              |
	 | 123456        |  livingroom     | 800              |
	
	#CREATE TAKEOFFS
	
	And the following rooms for floor plan number 123456 are set with standard products and given take-off amounts as follows.
	 | Rooms      | Prod_Category       | Stnd_Width | takeOff_Amount |
	 | WHC        | Carpet	        | 12'        |     100        |
	 | bathroom   | Carpet             |            |     17         |
	 | bedroom    | Carpet		 |            |     34         |
	 | bedroomMaster | Carpet		 |            |     17         |
	 | kitchen       | Carpet		 |            |     34         |
	 | livingroom   | Tile Square/Geometric|         |     67         |
	And Product Control for floor plan number 123456 is saved by Area for the TakeOff
	
			
	And Wall Tile Strucutre rooms for floor plan number 123456 are added with the following specifications
	 | Room_Name | Room_Type | Area_Name    | Area_Type | Stnd_Pattern | Alt_Area_type |
	 | kitchen   |           | kitchenArea  |           |              |               |
	 | bedroom   |           | bedroom1Area |           |              |               |
	 | bathroom  |           | bathroomArea |           |              |               |

			
	
	And Allowances and take off amounts for floor plan numbered 123456 are added for each Area in the WT details page per following
	 | Room_Name | Area_Name    | Allwnce_Base | Allwnce_Extra |
	 | bathroom  | bathroomArea | 15		   |               | 
	 | bedroom   | bedroom1Area | 20           |               |   
	 | kitchen   | kitchenArea  | 15           |               |
	             
	
	And A new homesite is created with the following attributes
	 | attributes    | value        |
	 | Lot_Number    | Tst1235      |
	 | Flr_Plan_Name | Testing123   | 
	 | Home_Address  |              |
	
		#floor plan name  is  hardcoded from specific Src comm flrplan  (AtmtionCommCopy_Src(DONT Delete)) WITH "Copy of" added ; Needs to be refactored to be usable for any flr plan;

	And the following buyers are created with their corresponding attributes
		| First_Name    | Community_name | DesignerName | HomeSiteNumber | PlanName	| BaseHomePrice | BuyerType  | CompleteByDate |
		 | Automation101 |                |              |   Tst1235      | Testing123  | 400000        | Home Buyer |   03/01/2021   |
	
	And A new flooring design scenario is created with the following attributes
		 | attributes           | value      |
		 | Buyer_Name           | James123   |
		 | Design_scenario_Name | testAutoDS |
		 | Set_as_Active	    | true       |		 

	And New Counter & Wall Design scenario is created with the following attributes
		 | attributes         | values           |
		 | scenario_Name      | CW_DS_101 |
		 | Designer_Name      |                  |
		 | effective_Date     |                  |
		 | is_Active_Scenario | true             |
    Given the 'Show Quotability Status' button is clicked in the CW Scenario Overview page
	 And A grout product and products for all required takeOffs are added and saved in the details page for each of the WT areas listed below	   
	 | Room_Name  | Area_Name      |	 
	 | bathroom   | bathroomArea   |
	 | bedroom   | bedroom1Area   |
	 | kitchen    | kitchenArea    |

	 #2testCWScen Auto

    When The create quote button is clicked in the Scenario overview page
	Then verify the amount for the rooms are correct in the calculator breakdown

	Given User Navigates to The Buyer's Report page
	And User navigates to the report configuration page for Design Summary Buyer - Quote Report
    And User selects Counter & Wall in the Service offering Drop down of the Configuration page for Design Summary Buyer - Quote Report
	When User clicks recalculate button in Configuration page for Design Summary Buyer - Quote Report
    Then A Design Summary Buyer Quote Report for Counter & Wall is successfully generated
	
	Given User Navigates to The Buyer's Report page 
		And User navigates to the report configuration page for Preliminary Design summary report
		And User elects to group by Category with room list for Preliminary Design summary report
		And User selects Counter & Wall in the Service offering Drop down of the Configuration page for Preliminary Design summary report
	When User clicks recalculate button in Configuration page for Preliminary Design summery report
    Then A Preliminary design summary report is successfully generated for Counter & Wall

 
Scenario: 0104 Tier 2 Create Community to Create LifeStyle Option Quote

#CREATE NEW COMMUNITY
	Given  A new community is created with the following attributes
	 | attributes     | value                |
	 | community_Name | Jan25_2021_101_14  |
	 | Community_id   |                      |
	 | builder        |                      |
	 | designer       |                      |
	 | sales_Mngr     |                      |
	 | Proj_Mngr      |                      |  

	And LifeStyle Options is set as a required Service Offering for the community
	And Lifestyle Options cuttoff date Appliances with display order 1 is added to the community 

#ADD STANDARD PRODUCTS
	 And Flooring products with the following attributes are added as standards

	 | ProdCategory			 | ProductName | NSIsellPrice | Sell_Price |
	 | Carpet			     |             | 6.01         | 6.12       |
	 | Tile Square/Geometric |             | 2.01         | 2.12       |
	 And A pad product with the following attribute is added as a standard
	 | attributes    | value |
	 | ProdCategory  | Pad   |
	 | ProductName   |       |
	 | BackOut_Price |1.02   |

#CREATE FLOOR PLAN
	And A new floor plan for a community is created with the following attributes
	 | attributes      | value    |
	 | Flr_Plan_Number | LO124    |
	 | Flr_Plan_Name   | testPlan1 |
	 | Flr_Plan_SF     | 2000     |
	 | Base_Home_Price |          |

	And Life style Options and Options plans are imported to the community
	And Community Flooring Group setup Page is named XYZ and saved

#CREATE HOMESITE
	And A new homesite is created with the following attributes
	 | attributes      | value         |
	 | Lot_Number      | Tst123        |   
	 | Flr_Plan_Name   | testPlan1     |
	 | Home_Address    |               |

#CREATE BUYER
   And the following buyers are created with their corresponding attributes
	 | First_Name    | Community_name | DesignerName | HomeSiteNumber | PlanName | BaseHomePrice | BuyerType | CompleteByDate |
	 | Automation101 |                |              |                |          | 400000        | Home Buyer |   12/11/2020   |

	And Selection status of the Options listed in the Lifestyle Option Selector page is changed to Upgrade or Special Charge

	When Create quote button is clicked in the Lifestyle Options Selector page
	Then LifeStyle Options Quote is created: confirmation message of successful quote creation displays AND Quote report is generated

	Given User Navigates to The Buyer's Report page
		And User navigates to the report configuration page for Design Summary Buyer - Quote Report
	    And User selects LifeStyle Options in the Service offering Drop down of the Configuration page for Design Summary Buyer - Quote Report
	When User clicks recalculate button in Configuration page for Design Summary Buyer - Quote Report
    Then A Design Summary Buyer Quote Report for LifeStyle Options is successfully generated
	
	Given User Navigates to The Buyer's Report page 
		And User navigates to the report configuration page for Preliminary Design summary report
		And User elects to group by Category with room list for Preliminary Design summary report
		And User selects LifeStyle Options in the Service offering Drop down of the Configuration page for Preliminary Design summary report
	When User clicks recalculate button in Configuration page for Preliminary Design summery report
    Then A Preliminary design summary report is successfully generated for LifeStyle Options
 

