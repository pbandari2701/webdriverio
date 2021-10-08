@BVT_Tier_2
Feature: BVT_Tier_2
	
Background: 
	Given I am logged in to  HDS as Admin

@BVT2_createComm
Scenario: 1.1 Tier 2 dataSetup for Automation dont delete
#CREATE NEW COMMUNITY - builder by select element in ComHmP
	Given  A new community is created with the following attributes
	 | attributes     | value			|
	 | community_Name | Bella Fiore-25522250000 |
	 | Community_id   |		 			|
	 | builder        |	Meritage Homes	|
	 | designer       |					|
	 | sales_Mngr     |					|
	 | Proj_Mngr      |					| 
	 #EfficiencyModeNo_Auto
	And Counter and Wall is set as a required service offering and use of HDS Custom calculator is applied
	And LifeStyle Options is set as a required Service Offering for the community
	And Lifestyle Options cuttoff date Appliances with display order 1 is added to the community 
	
#ADD STANDARD PRODUCTS
	 And Flooring products with the following attributes are added as standards

	 | ProdCategory			 | ProductName	 | NSIsellPrice | Sell_Price |
	 | Carpet				 |BERKSHIRE		 | 6.01         | 6.12       |
	 | Tile Square/Geometric | CANVAS 24"X24"	 | 2.01         | 2.12       |
	 #CITYSCAPE   CANVAS
	 And A pad product with the following attribute is added as a standard
	 | attributes    | value |
	 | ProdCategory  | Pad   |
	 | ProductName   |       |
	 | BackOut_Price |1.02   |
	And Counter and Wall products with the following attributes are added as standards
	 | ProdCategory | ProductName |
	 | Tile Plank  |             | 
	#And Community Flooring Group setup Page is opened and saved

#CREATE FLOOR PLAN
	And A new floor plan for a community is created with the following attributes
	 | attributes      | value    |
	 | Flr_Plan_Number | 1234   |
	 | Flr_Plan_Name   | testPlan1 |
	 | Flr_Plan_SF     | 2000     |
	 | Base_Home_Price |          |

#CREATE ROOMS
   And Rooms with the following attributes are added to the floor plan
	 | Floor_Plan_No | Rooom_Name      | Square_footage   |
	 | 1234        |  bathroom         | 200              | 
	 | 1234        |  bedroom        | 400              |
	 | 1234        |  kitchen       | 400              |
	 | 1234        |  masterBR       | 400              |
	 | 1234        |  livingroom      | 800              |
   And newly created floor plan 1234 opens
   And optional rooms for Bathroom and livingroom is selected
   
	And a floor plan is copied based on the following specifications
		| attributes          | value     |
		| src_Floor_Plan_Name | testPlan1 |
		| include_CW         | false      |
		| new_floorPlanName   |	testPlan	   |  
		| new_floorPlanNumber |	LO124	   |

	And a floor plan is copied based on the following specifications
		| attributes          | value     |
		| src_Floor_Plan_Name | testPlan1 |
		| include_CW         | false      |
		| new_floorPlanName   |	testPlan2	   |  
		| new_floorPlanNumber |	Tst000	   |
	And a floor plan is copied based on the following specifications
		| attributes          | value     |
		| src_Floor_Plan_Name | testPlan1 |
		| include_CW         | false      |
		| new_floorPlanName   |	testPlan3	   |  
		| new_floorPlanNumber |	Tst001	   |

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
	 | Room_Name | Room_Type | Area_Name    | Area_Type | Stnd_Pattern | Alt_Area_type |
	 | bathroom  |           | 2ndArea	    |           |              | Alternate     |
	 | bathroom  |           | bathroomArea |           |              |			   |
	 | bedroom   |           | bedroom1Area |           |              | Optional      |
	 | kitchen   |           | kitchenArea  |           |              |               |
	And the Alternate Room has been configured 

			#Note: null value for a parameter means default selections are kept
	And Allowances and take off amounts for floor plan numbered 1234 are added for each Area in the CW details page per following
	    | Room_Name | Area_Name    | Allwnce_Base | Allwnce_Extra |
	    | kitchen   | kitchenArea  | 15           |               |
	    | bedroom   | bedroom1Area | 20           |               |               
	    | bathroom  | bathroomArea | 15		      |               |   

	And Product Control for floor plan number 1234 is saved by Area for the TakeOff
	
	And Life style Options and Options plans are imported to the community
	# And Community Flooring Group setup Page is opened
	 #And Group description is saved
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
	 | Set_as_Active	    | true         |

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
	
 ###review
	#And User navigates to the Buyer report page from the flooring selector page via print preliminary Quote button
 ###review

	When User clicks on the create quote button from the flooring selector page for the active design scenario

	#Then Flooring Quote is created: confirmation message of successful quote creation displays AND Quote report is generated

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

	Given New Counter and Wall Design scenario is created with the following attributes
		 | attributes         | values           |
		 | scenario_Name      | 2testCWScen Auto |
		 | Designer_Name      |                  |
		 | effective_Date     |                  |
		 | is_Active_Scenario | true             |
	Given the alternate configuration button clicked and select the configured room
	
	Given the 'Show Quotability Status' button is clicked in the CW Scenario Overview page
	
	And A grout product and products for all required takeOffs are added and saved in the details page for each of the CW areas listed below Second
	   
	 | Room_Name  | Area_Name      |
	 | bathroom   | 2ndArea    |
	 | bedroom   | bedroom1Area   |
	 | kitchen   | kitchenArea   |
	 
	#And navigate to adjustment button on the CW Scenario Details page & add a new adjustment
    #Given The create quote button is clicked in the Scenario overview page
	When The create quote button is clicked in the Scenario overview page

	Given User Navigates to The Buyer's Report page
	And User navigates to the report configuration page for Design Summary Buyer - Quote Report
    And User selects Counter and Wall in the Service offering Drop down of the Configuration page for Design Summary Buyer - Quote Report
	When User clicks recalculate button in Configuration page for Design Summary Buyer - Quote Report
    Then A Design Summary Buyer Quote Report for Counter and Wall is successfully generated
	
	Given User Navigates to The Buyer's Report page 
		And User navigates to the report configuration page for Preliminary Design summary report
		#And User elects to group by Category with room list for Preliminary Design summary report
		And User selects Counter and Wall in the Service offering Drop down of the Configuration page for Preliminary Design summary report
	When User clicks recalculate button in Configuration page for Preliminary Design summery report
    Then A Preliminary design summary report is successfully generated for Counter and Wall 
#=========================================================================================================================================================
Scenario: 1.11 standard only use for working on test scenario.
	Given HDS Home page is displayed
	And the Design Center flooring scenario list page is opened for buyer named Automation101 in community Mellon_003
	Given New Counter and Wall Design scenario is created with the following attributes
		 | attributes         | values           |
		 | scenario_Name      | 2testCWScen AutoC |
		 | Designer_Name      |                  |
		 | effective_Date     |                  |
		 | is_Active_Scenario | true             |
	Given the 'Show Quotability Status' button is clicked in the CW Scenario Overview page
	
	And A grout product and products for all required takeOffs are added and saved in the details page for each of the CW areas listed below Second
	   
	 | Room_Name  | Area_Name      |
	 | kitchen    | kitchenArea    |
	 | bedroom1   | bedroom1Area   |
#	And Communities list page is opened
#	And User opens community named Aba_LIG
	#And newly created floor plan 1234 opens zero dot zero

#	And Product Control for floor plan number 1234 is saved by Area for the TakeOff
#========================================================================================================================================================
Scenario: 1.0 NewTest Stand page testing 

	Given HDS Home page is displayed
	And Communities list page is opened
	And User opens community named M3_2021_102_11
#ADD STANDARD PRODUCTS
	And Flooring products with the following attributes are added as standards select specific color
	 | ProdCategory | ProductName   | NSIsellPrice| Sell_Price |
	 |  Carpet      |	ACADIA RIVER|6.01         | 6.12       |
	And User clicks on Product Setup Link under Community Management and open the product ACADIA RIVER       	
	And ColorOne, ColorTwo and ColorThree are set as Standard Product
	And User clicks on Standards Setup link under Community Management
	And User Update Color Four and Five to be Standard instead of Color Two and Three  
	And User clicks on Product Setup Link under Community Management and open the product ACADIA RIVER
	And ColorTwo, ColorThree are now our of Base Group ColorOne, ColorFour, and ColorFive are set to Base Group, color set to USER too
	

#========================================================================================================================================================
Scenario Outline: 0.0 Stand page testing 

	Given HDS Home page is displayed
	And Communities list page is opened
	And User opens community named M3_2021_102_11
	#ADD STANDARD PRODUCTS
	And Flooring products with the following attributes are added as standards select specific color
	 | ProdCategory | ProductName   | NSIsellPrice| Sell_Price |
	 |  Carpet      |	ACADIA RIVER|6.01         | 6.12       |
	And User clicks on Product Setup Link under Community Management and open the product ACADIA RIVER
	And <1stPick>, <2ndPick> and <3rdPick> are set as Standard ProductON
Examples: 
| 1stPick  | 2ndPick  | 3rdPick    | 4thPick   | 5thPick  |
| ColorOne | ColorTwo | ColorThree | ColorFour |ColorFive |

#===========================================================================================================================================================
  
@BVT_createComm
Scenario: 2.9 Community Create till Quote Creation - Verifying Calculator Breakdown UI to DB
Given  A new community is created with the following attributes
	 | attributes     | value				|
	 | community_Name |	29_01312021_101		|
	 | Community_id   |		 				|
	 | builder        |	Meritage Homes		|
	 | designer       |						|
	 | sales_Mngr     |						|
	 | Proj_Mngr      |						| 
#EfficiencyModeNo_Auto
	And Counter and Wall is set as a required service offering and use of HDS Custom calculator is applied
	And LifeStyle Options is set as a required Service Offering for the community
	And Lifestyle Options cuttoff date Appliances with display order 1 is added to the community 

#ADD STANDARD PRODUCTS
	#And Flooring products with the following attributes are added as standards 
	And Flooring products with the following attributes are added as standards product
	 | ProductName	 | NSIsellPrice | Sell_Price |
	 | DURBAN		 | 6.01         | 6.12       |
	 | LEGACY 8"X47" | 2.01         | 2.12       |
And A pad product with the following attribute is added as a standard
	 | attributes    | value |
	 | ProdCategory  | Pad   |
	 | ProductName   |       |
	 | BackOut_Price |1.02   |	
#	And Community Flooring Group setup Page is opened and saved

 #CREATE FLOOR PLAN
	And A new floor plan for a community is created with the following attributes
	 | attributes      | value    |
	 | Flr_Plan_Number | 1234   |
	 | Flr_Plan_Name   | testPlan1 |
	 | Flr_Plan_SF     | 2000     |
	 | Base_Home_Price |          |

#CREATE ROOMS
   And Rooms with the following attributes are added to the floor plan
	 | Floor_Plan_No | Rooom_Name      | Square_footage   |
	 | 1234        |  bathroom        | 200              | 
	 | 1234        |  bedroom       | 400              |
	 | 1234        |  bedroomMaster | 200              |
	 | 1234        |  kitchen       | 400              |
	 | 1234        |  livingroom     | 800              |
   And newly created floor plan 1234 opens
  # And optional rooms for Bathroom and livingroom is selected
#CREATE TAKEOFFS
	And the following rooms for floor plan number 1234 are set with standard products and given take-off amounts as follows Second
	 | Rooms      | Prod_Category        | Stnd_Width | takeOff_Amount |
	 | WHC        | DURBAN				 | 12'        | 100             |
	 | bathroom   | DURBAN               |            | 17             |
	 | bedroom    | DURBAN				 |            | 34             |
	 | bedroomMaster | DURBAN			 |            | 17             |
	 | kitchen    | DURBAN				 |            | 34             |
	 | livingroom | LEGACY 8"X47"		 |            | 67             |

	 And the following rooms for floor plan number 1234 are set with standard products and given take-off amounts as follows.
	 | Rooms      | Prod_Category        | Stnd_Width | takeOff_Amount |
	 | WHC        | DURBAN				 | 12'        | 67             |
	 | bathroom   | DURBAN               |            | 17             |
	 | kitchen    | DURBAN				 |            | 34             |
	 | livingroom | DURBAN				 |            | 67             |
	 | bedroom1   | DURBAN				 |            | 34             |
	 | bedroom2   | LEGACY 8"X47"		 |            | 17             |
	 #CANVAS 12"X12"
	And Product Control for floor plan number 1234 is saved by Area for the TakeOff
	#And Console everything - verificationi purpose only

	#CREATE HOMESITE
	Given A new homesite is created with the following attributes
	 | attributes      | value      |
	 | Lot_Number      | tst123     |   
	 | Flr_Plan_Name   | testPlan1  |
	 | Home_Address    |            |

	#CREATE BUYER
   And the following buyers are created with their corresponding attributes
	 | First_Name   | Community_name | DesignerName | HomeSiteNumber | PlanName         | BaseHomePrice | BuyerType  | CompleteByDate |
	 | Automation101 |                |              |   tst123            | testPlan1 | 400000        | Home Buyer | 10/11/2019   |

#CREATE FLOORING DESIGN SCENARIO and QUOTE
	And A new flooring design scenario is created with the following attributes
	 | attributes           | value        |
	 | Buyer_Name           | AutoTstReactivateQt  |
	 | Design_scenario_Name | testAutoDS   |
	 | Set_as_Active	    | true         |

	And Color and grout, if Tile rooms present, are added to all rooms per following
	 | Prod_Category_of_Rooms | color       | grout	|
	 | WHC					  |			    |		|

And flooring Room Editor page for the room named bathroom is opened
And the room has been upgraded with a product name TOLEDO 13"X13"
	#	And <Roomname> is upgraded with product (queried/autogenerated) in the flooring room editor page
		And The Flooring room editor page is saved
	And User clicks on the create quote button from the flooring selector page for the active design scenario

	And Verifying Subscriber Waste Percentage to the DB
	And Verifying different values of the flooring design to the database 
	And Verifying different attributes of the selected product values
#=========================================================================================================================================================
#=========================================================================================================================================================

#@BVT2_createComm
Scenario: 1.2 Tier 2 Create Community to Create Flooring Quote
#CREATE NEW COMMUNITY
	Given  A new community is created with the following attributes
	 | attributes     | value				|
	 | community_Name |EnvisionAutomationTesting     	|
	 | Community_id   |						|
	 | builder        |						|
	 | designer       |						|
	 | sales_Mngr     |						|
	 | Proj_Mngr      |						|  
#ADD STANDARD PRODUCTS
	 And Flooring products with the following attributes are added as standards

	 | ProdCategory			  | ProductName | NSIsellPrice | Sell_Price |
	 | Carpet				  |BETHPAGE    | 6.01         | 6.12       |
	 | Tile Square/Geometric  |CLASSIC 12"X12"  | 2.01         | 2.12       |
	 And A pad product with the following attribute is added as a standard
	 | attributes    | value				  |
	 | ProdCategory  | Pad					  |
	 | ProductName   |3/8" SAGE 5 LB (SCAL) |
	 | BackOut_Price | 1.02					  |

	#And Community Flooring Group setup Page is opened and saved

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
	 | Rooms      | Prod_Category        | Stnd_Width | takeOff_Amount |
	 | WHC        | Carpet				 | 12'        | 117             |
	 | bathroom   | Carpet               |            | 17             |
	 | kitchen    | Carpet				 |            | 34             |
	 | livingroom | Carpet				 |            | 67             |
	 | bedroom    | Tile Square/Geometric |            | 34             |

	 And Product Control for floor plan number 123456 is saved by Area for the TakeOff
	
#CREATE HOMESITE
   #  And Community Flooring Group setup Page is opened - included on the Homesite Script
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

		 #if no value passed to color and grout-->they are picked randomly
 ###review
	#And User navigates to the Buyer report page from the flooring selector page via print preliminary Quote button
 ###review

	When User clicks on the create quote button from the flooring selector page for the active design scenario

	#Then Flooring Quote is created: confirmation message of successful quote creation displays AND Quote report is generated

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

  # NOTES: 
	# dependent on disabling of built-in browser pdf viewer (only implemented for chrome browser)
	# file direcotry for down loaded reports and failed test screenshots is in CDriver.
#=========================================================================================================================================================
#=========================================================================================================================================================
#@BVT2_createComm
Scenario: 1.3 Tier 2 Create Community Via Comm Copy to Create Counter & Wall Quote
	Given A community is copied based on the following spedifications
		| attributes           | value                      |
		| Source_Comm          | Bella Fiore-25522250000	|
	#copy items 
		| Available_Products   | true                       |
		| Options              | true                       |
		| FloorPlans           | true                       |
		| Create_New_Comm      | true                       |
	#new Comm attributes
		| New_Comm_name        | M31_2021_101_13				|
		| New_Comm_Id          | TstID1                     |
	#source community must have flooring takeoffs and flooring extra rules, and some lifestyle options for the purposes of this test. 
	
	And Creation of new Community and presence of selected copy items in the new community is verified
	And Counter and Wall is set as a required service offering and use of HDS Custom calculator is applied
	
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
	 
	 And Counter and Wall products with the following attributes are added as standards
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
	 | Rooms      | Prod_Category         | Stnd_Width | takeOff_Amount |
	 | WHC        | Carpet                | 12'        |                |
	 | bathroom   | Carpet                |            |                |
	 | bedroom    | Carpet                |            |                |
	 | kitchen    | Carpet                |            |                |
	 | masterBR   | Carpet                |            |                |
	 | livingroom | Tile Square/Geometric |            |                |
	 | GuestRoom  | Carpet                |            |                |
	#And the following rooms for floor plan number 1234 are set with standard products and given take-off amounts as follows.
	# | Rooms      | Prod_Category        | Stnd_Width | takeOff_Amount |
	# | WHC        | Carpet				 | 12'        |              |
	# | bathroom   | Carpet               |            |              |
	# | bedroom    | Carpet				 |            |              |
	# | bedroomMaster | Carpet			 |            |              |
	# | kitchen       | Carpet			 |            |              |
	# | livingroom   | Tile Square/Geometric|          |              |
	And Product Control for floor plan number 123456 is saved by Area for the TakeOff
	
			 #Number of rooms and Names is directly hardcoded from specific Src comm (AtmtionCommCopy_Src(DONT Delete)) ; Needs to be refactored to be usable in any community; 
			 #TO amts are copied and so do not need to be specified
	And Counter and Wall Strucutre rooms for floor plan number 123456 are added with the following specifications
	 | Room_Name | Room_Type | Area_Name    | Area_Type | Stnd_Pattern | Alt_Area_type |
	 | kitchen   |           | kitchenArea  |           |              |               |
	 | bedroom   |           | bedroom1Area |           |              |               |
	 | bathroom  |           | bathroomArea |           |              |               |

			#Note: null value for a parameter means default selections are kept
	
	And Allowances and take off amounts for floor plan numbered 123456 are added for each Area in the CW details page per following
	 | Room_Name | Area_Name    | Allwnce_Base | Allwnce_Extra |
	 | kitchen   | kitchenArea  | 15           |               |
	 | bedroom   | bedroom1Area | 20           |               |               
	 | bathroom  | bathroomArea | 15		   |               |   
	 
			#Note: Takeoff amt for each takeoff type of each area is randomly set w/ vals between 10 &20
			# no products are selected for each takeoff type  

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

	And New Counter and Wall Design scenario is created with the following attributes
		 | attributes         | values           |
		 | scenario_Name      | CW_DS_101 |
		 | Designer_Name      |                  |
		 | effective_Date     |                  |
		 | is_Active_Scenario | true             |
    Given the 'Show Quotability Status' button is clicked in the CW Scenario Overview page
	 And A grout product and products for all required takeOffs are added and saved in the details page for each of the CW areas listed below	   
	 | Room_Name  | Area_Name      |
	 | kitchen    | kitchenArea    |
	 | bedroom   | bedroom1Area   |
	 | bathroom   | bathroomArea   |
	 #2testCWScen Auto

    When The create quote button is clicked in the Scenario overview page
	## need to revisit this. 
	#Then Counter and Wall Quote is created: confirmation message of successful quote creation displays AND Quote report is generated

	Given User Navigates to The Buyer's Report page
	And User navigates to the report configuration page for Design Summary Buyer - Quote Report
    And User selects Counter and Wall in the Service offering Drop down of the Configuration page for Design Summary Buyer - Quote Report
	When User clicks recalculate button in Configuration page for Design Summary Buyer - Quote Report
    Then A Design Summary Buyer Quote Report for Counter and Wall is successfully generated
	
	Given User Navigates to The Buyer's Report page 
		And User navigates to the report configuration page for Preliminary Design summary report
		And User elects to group by Category with room list for Preliminary Design summary report
		And User selects Counter and Wall in the Service offering Drop down of the Configuration page for Preliminary Design summary report
	When User clicks recalculate button in Configuration page for Preliminary Design summery report
    Then A Preliminary design summary report is successfully generated for Counter and Wall 

#=========================================================================================================================================================
#=========================================================================================================================================================
#@BVT2_createComm
 Scenario: 1.4 Tier 2 Create Community to Create LifeStyle Option Quote

#CREATE NEW COMMUNITY
	Given  A new community is created with the following attributes
	 | attributes     | value                |
	 | community_Name | M30_2021_101_14  |
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
	#And Community Flooring Group setup Page is named XYZ and saved

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

#=========================================================================================================================================================
#=========================================================================================================================================================

@BVT2_ProdType_Audt
#Create a new Flooring Product Type with flooring suitable product categories   (# use as failed tests for demo w/ identical PT already created)
Scenario Outline: 1.5 Create Product Type to Add associated Product to Design
	Given Buyer's list page is opened
		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
		And A new flooring design scenario is created with the following attributes
			| attributes           | value              |
			| Design_scenario_Name | 01292021_101 |
			| Set_as_Active        | false              |

		And A product of <Prod_Category> Category that is not a standard for community <Community_Name> is opened and noted as upgradeProdName
		And Navigate to Product Color Cost Tab
		Given total install cost for the product is noted as TIC_beforeChange in the product editor page
		And Product Type List Page is opened
		And New Flooring Product Type is created with the following attributes
			| attribute         | value                |
			| Product_Category  | Tile Square/Geometric                 |
			| Product_Type_Name | Green101|
			| Floor_Labor_Rate  | 1.71                 |
			| Size_min          | 0 	               |
			| Size_max          | 0                    |
		And Flooring Product type is saved and shows the follwing attributes
			| attribute         | value                |
			| Product_Category  | Tile Square/Geometric                 |
			| Product_Type_Name | Green101|
			| Floor_Labor_Rate  | 1.71                 |
		And Product list page is opened
		And a flooring product named (queried/autogenerated) is opened

	    And <Product_Type> is set as product type in the product editor page

		# workaround pending resolution of
			And Changes in the product editor page are saved
			And a flooring product named (queried/autogenerated) is opened

		# workaround pending resolution of

		And total install cost for the product is noted as TIC_afterChange in the product editor page
		And Changes in the product editor page are saved
		And Buyer's list page is opened
		And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
		And User navigates to the buyer's scenario list/options selector Page for <Service_Offering> Service Offering
		And a <Service_Offering> design scenario named 01292021_101 is opened
		And flooring Room Editor page for the room named <RoomName> is opened
		And <Roomname> is upgraded with product (queried/autogenerated) in the flooring room editor page
		And The Flooring room editor page is saved
	When the upgrade sell price for <RoomName> is observed via Calc Breakdown stored prodcedure 	
	Then the upgrade sell price for <RoomName> equals the total install cost noted as TIC_beforeChange
	
	Given A second flooring design scenario is created with the following attributes
		| attributes              | value                        |
		| Design_scenario_Name    | SecondDS101 |
		| Set_as_Active           | false					     |

		And flooring Room Editor page for the room named <RoomName> is opened
		And <Roomname> is upgraded with product (queried/autogenerated) in the flooring room editor page
		And The Flooring room editor page is saved
	When the upgrade sell price for <RoomName> is observed via Calc Breakdown stored prodcedure 	
	Then the upgrade sell price for <RoomName> equals the total install cost noted as TIC_afterChange

Examples: 
 | Service_Offering | Product_Type  | Prod_Category        | RoomName   | Buyer_Name   | Community_Name | 1st_Scenario | 2nd_Scenario |
 | Flooring         | Green101  	| Tile Square/Geometric| livingroom | Automation101| F16_2021_101_11| 01292021_101 | SecondDS101  |
 #Sea_Mar_Colorado
#=========================================================================================================================================================
#=========================================================================================================================================================

@BVT2_Install_Method_Audt
#Create a new Install Method for Flooring
	# Assumptions: an existing active design scenario for the buyer; 		
Scenario Outline: 1.6 Create Install Method and Verify Carpet Install Methods
	Given Install methods list page is opened
		And New Install Method is created with  the following attributes
			| attribute				 | value					|
			| Product_Category		 | Carpet					|
			| IM_Group			     | Carpet Install Methods   |
			| IM_Name				 | CarpetInstall_M2_101 |
			| Labor_Premium			 | 1.51                     |
			| Mat_Waste_Factor		 | 4.11                     |
			| Lay_Angle				 | 45.05                    |
		
			And Buyer's list page is opened
			And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
			And User navigates to the buyer's scenario list/options selector Page for <Service_Offering> Service Offering
			And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		When Room Editor page for the room named <RoomName> is opened
		Then the install method named <Install_Method_Name> is Not displayed for selection
			
			Given A new flooring design scenario is created with the following attributes
				 | attributes           | value                     |
				 | Design_scenario_Name | NewDS101|
				 | Set_as_Active        | false                     |
			And flooring Room Editor page for the room named <RoomName> is opened
			And the install method named <Install_Method_Name> is selected in the Room Editor page
			And The Flooring room editor page is saved
		When Room Editor page for the room named <RoomName> is opened
		Then the install method for the room named <RoomName> is <Install_Method_Name>

Examples: 
 | Service_Offering | Buyer_Name     | Community_Name    | Install_Method_Name	| RoomName| 
 | Flooring         | AutoTstBuyer   | M29_2021_101_12	 | CarpetInstall_M2_101 | kitchen |  

#=========================================================================================================================================================
#=========================================================================================================================================================
@BVT2_Install_Method_Audt
#Create a new Install Method for Flooring
	# Assumptions: an existing active design scenario for the buyer; 		
Scenario Outline: 1.7 Create Install Method and Verify Audit for Carpet Grout Sealing
	Given Install methods list page is opened
		And New Install Method is created with  the following attributes
			| attribute				 | value				  |
			| Product_Category		 | Carpet		          |
			| IM_Group			     | Carpet Install Methods | 
			| IM_Name				 | Install_M1_101         |
			| Labor_Premium			 | 1.51					  |
			| Mat_Waste_Factor		 | 4.11					  |
			| Lay_Angle				 | 45.05				  |
		
			And Buyer's list page is opened
			And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
			And User navigates to the buyer's scenario list/options selector Page for <Service_Offering> Service Offering
			And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		When Room Editor page for the room named <RoomName> is opened
		Then the install method named <Install_Method_Name> is Not displayed for selection
			
			Given A new flooring design scenario is created with the following attributes
				 | attributes           | value         |
				 | Design_scenario_Name | IM_Testing104 |
				 | Set_as_Active        | false         |
			And flooring Room Editor page for the room named <RoomName> is opened
			And the install method named <Install_Method_Name> is selected in the Room Editor page
			And The Flooring room editor page is saved
		When Room Editor page for the room named <RoomName> is opened
		Then the install method for the room named <RoomName> is <Install_Method_Name>
Examples: 
 | Service_Offering | Buyer_Name     | Community_Name   | Install_Method_Name | RoomName | 
 | Flooring         | Automation101  | M29_2021_101_12  | Install_M1_101      | kitchen  | 

 #===============================================================================================================================================
 #================================================================================================================================================

@BVT2_Install_Method_Audt
#Create a new Install Method for Flooring
	# Assumptions: an existing active design scenario for the buyer; 		
Scenario Outline: 1.8 Create Install Method and Verify Tile Square Grout Install Methods
	Given Install methods list page is opened
		And New Install Method is created with  the following attributes
			| attribute				 | value					  |
			| Product_Category		 | Tile Square/Geometric      |
			| IM_Group			     | Grout Sealing              |
			| IM_Name				 | TSquareGroutInstall_M1_101 |
			| Labor_Premium			 | 1.51                       |
			| Mat_Waste_Factor		 | 4.11                       |
			| Lay_Angle				 | 45.05                      |
		
			And Buyer's list page is opened
			And A buyer with the following attributes is opened: <Community_Name>,<Buyer_Name>
			And User navigates to the buyer's scenario list/options selector Page for <Service_Offering> Service Offering
			And The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
		When Room Editor page for the room named <RoomName> is opened
		Then the install method named <Install_Method_Name> is Not displayed for selection
			
			Given A new flooring design scenario is created with the following attributes
				 | attributes           | value                     |
				 | Design_scenario_Name | InstallMTest28101|
				 | Set_as_Active        | false                     |
			And flooring Room Editor page for the room named <RoomName> is opened
			And the install method named <Install_Method_Name> is selected in the Room Editor page grout
			And The Flooring room editor page is saved
		When Room Editor page for the room named <RoomName> is opened
		Then the grout install method for the room named <RoomName> is <Install_Method_Name> 

Examples: 
 | Service_Offering | Buyer_Name      | Community_Name        | Install_Method_Name		 | RoomName  | 
 | Flooring         | Automation101	  | M29_2021_101_12      | TSquareGroutInstall_M1_101 | bedroom |  

#=========================================================================================================================================================
#=========================================================================================================================================================
#@BVT2_CopyCWArea
Scenario Outline: 3.0 Tier 2 Copy CW Area in community CW structure pagee
	Given HDS Home page is displayed
		And Communities list page is opened
		And User opens community named <Community_Name>
		And User clicks on Floor Plan Link under Community Management
		And User navigates to the Community CW structure page for floor plan named <floor_planName>
		And User copies area <copy_src_areaName> from room named <copy_Source_RoomName> to room named <target_RoomName> in the Comm CW strucutre page
	#When the room <target_RoomName> is expanded in the Community CW strucutre page
	#Then the copied area <copy_src_areaName> is displayed within room <target_RoomName> in the Community CW strucutre page
	
Examples: 
| Community_Name	 | floor_planName  | copy_Source_RoomName | copy_src_areaName | target_RoomName |
| F15_2021_103_11	 | testPlan1       | kitchen			  | kitchenArea       | bedroom        |  

#=========================================================================================================================================================
#=========================================================================================================================================================
@BVT2_CopyFloorPlan
Scenario: 2.6 Tier 2 Copy FloorPlan with Added CW Area for a Room from same community and verify items
	Given HDS Home page is displayed
		And Communities list page is opened
		And User opens community named M29_2021_101_11
		And User clicks on Floor Plan Link under Community Management
		And User navigates to the Community CW structure page for floor plan named testPlan1
		And testPlan1 is noted as source floor plan 

		And all the rooms are expanded in the community CW structure page
		And all area information for area kitchenArea in room kitchen are noted in community CW strucutre page
			# includes Area Name, selected Area Type, selected Stndrd Pattern, all takeoffTypes, selected Alt area Type and  Control selection for local dto
		And user navigates to the community Floor Plan list page
		And user navigates to the Community CW Details page for floor plan named testPlan1
		And all area information for area kitchenArea in room kitchen are noted in community CW Details page
		And a floor plan is copied based on the following specifications
		 | attributes          | value    |
		 | src_Floor_Plan_Name | testPlan1 |
		 | include_CW?         | true     |
		 | new_floorPlanName   |          |
		 | new_floorPlanNumber |          |
		And User navigates to the Community CW structure page for floor plan named (autogenerated)
	    And all the rooms are expanded in the community CW structure page
	 When all area information for area kitchenArea in room kitchen are noted in community CW strucutre page
     Then the area information in the CW structure page for both the source and new (copied) of floor plan are strucuture pages are identical
	
	 Given user navigates to the community Floor Plan list page
		And User navigates to the Community CW Details page for floor plan named (autogenerated)
	 When all area informations for area kitchenArea in room kitchen are noted in community CW details page
	 Then the area information in the CW details page for both the source and new (copied) floor plans are identical
	 #delete the created floor plans
#=========================================================================================================================================================
#=========================================================================================================================================================
@BVT2_CopyCWstructure/Details
Scenario: 1.9 Tier 2 Copy CW Structure/Detail from One Floor Plan to Another
	Given HDS Home page is displayed
		And Communities list page is opened
		And User opens community named M29_2021_101_11 
		And User clicks on Floor Plan Link under Community Management
		And User navigates to the Community CW structure page for floor plan named testPlan1
		And testPlan1 is noted as source floor plan 
		And all the rooms are expanded in the community CW structure page
		And all area information for area kitchenArea in room kitchen are noted in community CW strucutre page
			# includes Area Name, selected Area Type, selected Stndrd Pattern, all takeoffTypes, selected Alt area Type and  Control selection for local dto
		And user navigates to the community Floor Plan list page
		And user navigates to the Community CW Details page for floor plan named testPlan1
		And all area information for area kitchenArea in room kitchen are noted in community CW Details page

		And User clicks on Floor Plan Link under Community Management

		And A new floor plan for a community is created with the following attributes
		 | attributes      | value             |
		 | Flr_Plan_Number | testPlan1.9        |
		 | Flr_Plan_Name   | NewFlrPlan |
		 | Flr_Plan_SF     | 2000              |
		 | Base_Home_Price |                   |
	    And Rooms with the following attributes are added to the floor plan
		 | Floor_Plan_No | Rooom_Name | Square_footage |
		 | testPlan1.9    | kitchen    | 400            |
		 | testPlan1.9    | bedroomMaster   | 400            |
		 | testPlan1.9    | bedroom   | 200            |
		 | testPlan1.9    | bathroom   | 200            |
		 | testPlan1.9    | livingroom | 800            |

		And User navigates to the Community CW structure page for floor plan named NewFlrPlan
		And a Counter and Wall strucutre/detail is copied based on the following specification
		 | attributes          | value		|
		 | src_Floor_Plan_Name | testPlan1   |
		 | heya                | mino	    |

	    And all the rooms are expanded in the community CW structure page
	 When all area information for area kitchenArea in room kitchen are noted in community CW strucutre page
     Then the area information in the CW structure page for both the source and new (copied) of floor plan are strucuture pages are identical
	
	 Given user navigates to the community Floor Plan list page
		And User navigates to the Community CW Details page for floor plan named NewFlrPlan
	 When all area informations for area kitchenArea in room kitchen are noted in community CW details page
	 #Then the area information in the CW details page for both the source and new (copied) floor plans are identical
	 #And the newly created Floor Plan is Deleted 
#=========================================================================================================================================================
#=========================================================================================================================================================

@BVT2_SubscriberAuditReprt
Scenario Outline: 2.0 Verify User can create Admin level Audit report for Subscriber Labor and Product
	Given Audit Report page link under Administration Menu is clicked
		And Community named Bella Fiore-25522250000 is Selected in the Community drop down of the <Report_type> Audit Report page
	When the Download Report button for <Report_type> is clicked in the Audit Report page
	Then an Excel file of the Admin Audit Report for <Report_type> is generated
Examples: 
| Report_type                  |
| Subscriber Labor and Product |
#=========================================================================================================================================================
#=========================================================================================================================================================

@BVT2_SubscriberAuditReprt
Scenario Outline: 2.1 Verify User can create Admin level Audit report for Community Detail
	Given Audit Report page link under Administration Menu is clicked
		And Community named Bella Fiore-25522250000 is Selected in the Community drop down of the <Report_type> Audit Report page
	When the Download Report button for <Report_type> is clicked in the Audit Report page
	Then an Excel file of the Admin Audit Report for <Report_type> is generated
Examples: 
| Report_type                 |
| Community Detail            |

#=========================================================================================================================================================
#=========================================================================================================================================================

@BVT2_TracerDiag
Scenario Outline: 2.2 verify Floor plan image upload and tracer to design center current.
Given the community level floorplan editor page is opened for <FloorPlan_Number> in community <CommunityName>
	When a new floor plan image with file name <Floor_Plan_image_fileName> is uploaded in the floor plan editor page
	Then Floor plan editor page displays the file name <Floor_Plan_image_fileName>
	When the 'Create Diagram' link is clicked for the background Image named <Floor_Plan_image_fileName> in the Community Floor Plan Editor page
	Then A Tracer diagram editor window is displayed for the floor plan
	#@BVT2_TracerDiagzb
	Given the checkbox for the following rooms is selected in the tracer diagram editor window of the community floorplan image
		| RoomName |
		| livingroom |
		| bedroom |
		And the tracer diagram in the diagram editor window of community floor plan is saved with name <Tracer_diagram_Name>
	When the 'Edit' button is clicked for tracer diagram named <Tracer_diagram_Name>
	Then the tracer diagram editor window of community floor plan opens with checkbox checked for the following rooms
		| RoomName   |
		| livingroom |
		| bedroom    |
	Given the window displaying the community floor plan tracer diagram is closed  
	
	Given the Design Center flooring scenario list page is opened for buyer named <Buyer_Name> in community <CommunityName>
	When The active <Service_Offering> design scenario is opened if Svc Offering is Flooring or CW
	Then tracer diagram link named <Tracer_diagram_Name> is displayed in the Buyer's flooring selector page 
    When the link for the tracer diagram named <Tracer_diagram_Name> is clicked in the Buyer's flooring selector page
	Then A new window for displaying tracer diagram selected from Buyer's flooring selector page is loaded
		And the tracer diagram for the flooring design scenario is identical to the corresponding diagram at the community floor plan editor page
	Given the community level floorplan editor page is opened for <FloorPlan_Number> in community <CommunityName>		
	And the 'Delete' link is clicked for tracer diagram named <Tracer_diagram_Name> in the Community Floor plan editor page

Examples: 
| CommunityName  | FloorPlan_Number | Tracer_diagram_Name			| Floor_Plan_image_fileName          | Service_Offering | Buyer_Name    |
| 1102012021_102 | 1234             | Test Tracer Diagram.jpg		| Floor Plan Tracer Diagram.jpg		 | Flooring         | Automation101 |
#=========================================================================================================================================================
#=========================================================================================================================================================
@BVt2_SbscrbrTax_Groupchange
@BVT2_ProdTypeGroupchange
Scenario: 2.3 Verify Group change in Product Type when Updating Material and Labor Tax on the Subscriber Setting BOTH
		Given Subscriber Setting under Administration Menu is opened
		And the Default Labor Tax Rate is set to 1 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Default Material Tax Rate is set to 2 in the Subscriber Settings page
		And the Update all Material tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		Given the database is queried to a specific product type to note the Material Tax, Labor Tax, Flooring Cost Used, Product Tax Rate, MiscellaneousCost and Group Name
		And Product list page is opened
		And a Flooring style name CAVELL is opened
		And verify the Material Tax on  Subscriber Setting is the same as Product Tax Rate
		And verify the floor Group is Group A
		Given Subscriber Setting under Administration Menu is opened
		And the Default Labor Tax Rate is set to 90 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		Given the database is queried to a specific product type to note the Material Tax, Labor Tax, Flooring Cost Used, Product Tax Rate, MiscellaneousCost and Group Name
		And Product list page is opened
		And a Flooring style name CAVELL is opened
		And verify the Material Tax on  Subscriber Setting is the same as Product Tax Rate
		And verify the floor Group is Group B

#==========================================================================================================================================================================
#==========================================================================================================================================================================
#@BVt2_SbscrbrTax_dataRstr
@BVT2_ProdTypeTaxCost
Scenario: 2.4 Verify Subscriber Level Labor Tax set with Update all Applies to CW Product Types
	Given the database is queried to find a product type for CW service Offering and its Name, product category, and its Square foot labor rate and sales tax cost are noted
		Given Subscriber Setting under Administration Menu is opened 
		And the Default Labor Tax Rate is set to 12 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And Product Type List Page is opened
		And Product type list in the list page is filtered by prod Category of the selected Prod type
	When Product type noted in the database query is opened 
	Then the Product type editor page opens and the Square foot sales tax cost is 91 percent of the Sqaure foot CW labor rate as set at the subscriber level
#=========================================================================================================================================================
#@BVt2_SbscrbrTax_dataRstr
@BVT2_PTtax_OvrWrt_SubscLvlLbr
@BVT2_ProdTypeTaxCost
Scenario: 3.6 Tier 2 Verify that User can overwrite the subscriber level Labor Tax for flooring Product Types (zb)
	Given the database is queried to find a product type for Flooring service Offering and its product category, labor rate and sales tax cost are noted
		And Subscriber Setting under Administration Menu is opened
		And the Default Labor Tax Rate is set to 60 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And Product Type List Page is opened
		And Product type list in the list page is filtered by prod Category of the selected Prod type
		And Product type noted in the database query is opened
		And change in the sales tax cost of the product type from original amount noted in database query is verified
		And the flooring sales tax cost field is set with value 0.41 in the Product Type Editor page
		And the product type editor page is saved
		And Product type list in the list page is filtered by prod Category of the selected Prod type
	When Product type noted in the database query is opened
	Then the value of the sales cost of the flooring Product type in the product type editor page is .041
#=========================================================================================================================================================
#=========================================================================================================================================================
@BVT_ActivatingCancelledQuote
Scenario: 2.5 MASTER QA Verify Flooring Scenario Creation from a Cancelled Quote 	
	Given Buyer's list page is opened
		And A buyer with the following attributes is opened: QuoteReactivationTest,Automation101 
		And the 'View Quote History' button is clicked in the buyer info page for Flooring service offering
		And the recent Cancelled Quote is reactivated for flooring service offering in the Buyer info page two
		Given Buyer's list page is opened
		And A buyer with the following attributes is opened: QuoteReactivationTest,Automation101 
		And the DB noted lists of items from the Pending Quote such as style, buyer price, area name and more
		And the flooring Quote status for the buyer is set to Cancelled in the buyer info page
		And the save button is clicked on the buyer information 		
#=========================================================================================================================================================
#=========================================================================================================================================================
@BVT_ActivatingCancelledQuote
Scenario: 3.4 UAT Verify Quote Reactivation from a Cancelled Quote 	 
	Given Buyer's list page is opened
		And A buyer with the following attributes is opened: MaryJunee,Automation101 
		And the 'View Quote History' button is clicked in the buyer info page for Flooring service offering
		And the recent Cancelled Quote is reactivated for flooring service offering in the Buyer info page two
		Given Buyer's list page is opened
		And A buyer with the following attributes is opened: MaryJunee,Automation101 
		And the DB noted lists of items from the Pending Quote such as style, color, buyer price, area name in UAT
		And the flooring Quote status for the buyer is set to Cancelled in the buyer info page
		And the save button is clicked on the buyer information 

#Need to look at it again - the query is all NULL even for Quote ID
@BVT2_ReactivateFlrngQt
Scenario: 3.3 Verify Flooring quote reactivation 2.3 (the query is all NULL even for Quote ID)
#reactivae an old quote; 
	#open view an old quote from view quote history 
	Given Buyer's list page is opened
		And A buyer with the following attributes is opened: M29_2021_101_12,Automation101
		And the 'View Quote History' button is clicked in the buyer info page for Flooring service offering
		And the quote id and upgrade amount of a randomly selected cancelled quote is noted for flooring service Offering 
		And the randomly selected Cancelled Quote is reactivated for flooring service offering in the Buyer info page
	And the 'View Quote History' button is clicked in the buyer info page for Flooring service offering
	Then the total upgrade amount displayed for the new quote matches the amount noted for the quote from which it was reactivated in the buyer info page
	
	When database is queried for for the fdsr table of the orginal quote and the new quote created via reactivation
	Then the core upgrade amount and core unit sell price of individual rooms is identical for both the new and old quote

#=========================================================================================================================================================
#=========================================================================================================================================================

Scenario: 3.4 MASTER QA Verify Flooring Scenario Creation from Design Scenario
	Given the recently quote is queried and noted in the database
	Given Buyer's list page is opened
	And A buyer with the following attributes is opened: M29_2021_101_12,Automation101 
		
		#CREATE FLOORING DESIGN SCENARIO and QUOTE
#	And A new flooring design scenario is created with the following attributes
#	 | attributes           | value        |
#	 | Buyer_Name           | AutoTstBuyer |
#	 | Design_scenario_Name | testAutoDS   |
#	 | Set_as_Active	    | true         |

#	And Color and grout, if Tile rooms present, are added to all rooms per following 2
#	 | Prod_Category_of_Rooms | color | grout |
#	 | WHC					  |       |       |
#	 | Tile Square/Geometric  |       |       | 

		And the 'View Quote History' button is clicked in the buyer info page for Flooring service offering
		And from the recent quote, create Design From Here button clicked in the Buyer info page 1
		When User clicks on the create quote button from the flooring selector page for the active design scenario
		And the DB noted lists of items from the new created design and verify the newly created design to the source

		#Given Buyer's list page is opened
		#And A buyer with the following attributes is opened: Cycle_Auto_,Automation101 
		
		
		#And the flooring Quote status for the buyer is set to Cancelled in the buyer info page
		#And the save button is clicked on the buyer information 		

	
		
#=========================================================================================================================================================
#=========================================================================================================================================================
@BVT2_CreateDesignFromFlrngQt
Scenario: 4.1 MASTER QA Verify Flooring Scenario Creation from a Cancelled quote
#reactivae an old quote; 
	#open view an old quote from view quote history 
	Given Buyer's list page is opened
		And A buyer with the following attributes is opened: Community10,Automation101 
		And the 'View Quote History' button is clicked in the buyer info page for Flooring service offering
		And the quote id and upgrade amount of a randomly selected cancelled quote is noted for flooring service Offering 
		And the database is queried for for the fdsr table of the randomly selected cancelled quote and the the sum of core upgrade amount for each room is noted
	When the 'Create Design From Here' button in the 'View Quote History' dialog is clicked for the randomly selected Cancelled quote in the buyer info page
	Then the flooring selector page for the new scenario is displays with upgrade total amount same as the amount noted for the quote from which it was created
		And the sum of the per-room, core upgrade amount noted in the database query of the cancelled quote matches the upgrade amount of the new design scenario

#=========================================================================================================================================================
#=========================================================================================================================================================



Scenario: 3.1 Tier 2 Verify Group change in Product Type when Updating Material and Labor Tax on the Subscriber Setting 2.3
		Given Subscriber Setting under Administration Menu is opened
		And the Default Labor Tax Rate is set to 1 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Default Material Tax Rate is set to 2 in the Subscriber Settings page
		And the Update all Material tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		Given the database is queried to a specific product type to note the Material Tax, Labor Tax, Flooring Cost Used, Product Tax Rate, MiscellaneousCost and Group Name
		And Product list page is opened
		And a Flooring style name HEADLAND is opened
		And verify the Material Tax on  Subscriber Setting is the same as Product Tax Rate
		And verify the floor Group is Group A
		Given Subscriber Setting under Administration Menu is opened
		And the Default Material Tax Rate is set to 90 in the Subscriber Settings page
		And the Update all Material tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		Given the database is queried to a specific product type to note the Material Tax, Labor Tax, Flooring Cost Used, Product Tax Rate, MiscellaneousCost and Group Name
		And Product list page is opened
		And a Flooring style name HEADLAND is opened
		And verify the Material Tax on  Subscriber Setting is the same as Product Tax Rate
		And verify the floor Group is Group B
#=========================================================================================================================================================
#=========================================================================================================================================================	

#@BVt2_SbscrbrTax_dataRstr	
@BVT2_InstallMethodTaxCost
Scenario: 3.5 Tier 2 Verify Subscriber Level Labor Tax set with Update all Applies to Install Methods
	Given the database is queried to find an install Method and its Name, product category, and its labor premium and  sales tax cost are noted
		And Subscriber Setting under Administration Menu is opened
		And the Default Labor Tax Rate is set to 19 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And Install methods list page is opened 
	When install method noted in the database query is opened 
	Then the Install method editor page opens and the tax cost is 19 percent of the labor rate of the Install method as set at the subscriber level

#=========================================================================================================================================================
#@BVT2_IMtax_OvrWrt_SubscLvlLbr 
#@BVt2_SbscrbrTax_dataRstr
@BVT2_InstallMethodTaxCost
Scenario: 3.7 Verify that User can overwrite the subscriber level Labor Tax for Install methods(zb)
	Given the database is queried to find an install Method and its Name, product category, and its labor premium and  sales tax cost are noted
		And Subscriber Setting under Administration Menu is opened
		And the Default Labor Tax Rate is set to 81 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And Install methods list page is opened
		And install method noted in the database query is opened
		And change in the sales tax cost of the install method from original amount noted in database query is verified 
		And the tax cost for the Install Method is set with value 0.41 in the Install Method Editor page
		And the install Methods Editor page is saved
	When install method noted in the database query is opened
	Then the tax cost field displays value 0.41 in the Install Methods Editor page  
#=========================================================================================================================================================
#=========================================================================================================================================================

@BVt2_SbscrbrTax_DesignScenario
@BVT2_DesignScenario
Scenario: 3.8 MASTER QA Subscriber Level Material Tax and Labor Tax for Design Scenario Master Test zb) 
#Given here is not necessary
	Given the database is queried to find a Flooring Design Scenario Total Upgrade Amount for a Specific Buyer 
		And Subscriber Setting under Administration Menu is opened
		And the Default Material Tax Rate is set to 50 in the Subscriber Settings page
		And the Update all Material tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And the Default Labor Tax Rate is set to 10 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And Buyer's list page is opened
		And A buyer with the following attributes is opened: M29_2021_101_12,Automation101
		And A new flooring design scenario is created with the following attributes
		 | attributes           | value        |
		 | Buyer_Name           | Automation101 |
		 | Design_scenario_Name | TaxRate106  |
		 | Set_as_Active	    | true         |
		 
		And flooring Room Editor page for the room named bedroom is opened
		And bedroom is upgraded with product TOLEDO 17"X17" in the flooring room editor page					
		And color is randomly selected in the color/Pattern drop down of the flooring room editor page
		And The Flooring room editor page is saved 
		And Design Scenario list page in the database query is opened
		#AboveC
		

#=========================================================================================================================================================
#=========================================================================================================================================================
@BVT2_SubscriberLevelLaborTaxDesignExtraszb
Scenario: 2.7 MASTER QA Verify that User can overwrite the subscriber level Labor Tax for DesignExtra Flooring
	Given the database is queried to find Design Extra Name, tax cost and default labor tax rate are noted
		And Subscriber Setting under Administration Menu is opened
		And the Default Labor Tax Rate is set to 70 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And Design Extras for Flooring in Adminstration menu is clicked
		And Flooring DesignExtraName FlooringDesignExtra_Automation is clicked
		And change in the sales tax cost of the Flooring Design Exra from original amount noted in database query is verified
		And Subscriber Setting under Administration Menu is opened
		And the Default Labor Tax Rate is set to 10 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
#=========================================================================================================================================================
#=========================================================================================================================================================
@BVT2_SubscriberLevelLaborTaxDesignExtraszb
Scenario: 2.8 MASTER QA Verify that User can overwrite the subscriber level Labor and Material Tax for Design Extra Flooring 
	Given the Database is Queried to find Design Extra Name, tax cost and default labor tax rate are noted (Material and Labor Tax)
		And Subscriber Setting under Administration Menu is opened
		And the Default Material Tax Rate is set to 45 in the Subscriber Settings page
		And the Update all Material tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And the Default Labor Tax Rate is set to 35 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And Design Extras for Flooring in Adminstration menu is clicked
		And Flooring DesignExtraName FlooringDesignExtra_Automation is clicked
		And change in the sales tax cost of the Flooring Design Exra from original amount noted in database query is verified (Material and Labor Tax)
#=========================================================================================================================================================
Scenario: 3.2 Working On MASTER QA Verify that User can overwrite the subscriber level Labor Tax for DesignExtra Flooring New 2020
	Given Subscriber Setting under Administration Menu is opened
	And the Default Material Tax Rate is set to 10 in the Subscriber Settings page
	And the Default Labor Tax Rate is set to 20 in the Subscriber Settings page
	
	And Design Extras page link under Administration Menu is clicked for Flooring service offering
	Given  a new Design Extra is Created
		| DesignName | DisplayUnit | ProductCatagories     | PriceMaterialCost | PriceLaborCost | MarginPercent |
		| AutoDExtra | SF          | Tile Square/Geometric |       91      |    80       |      55    |

#ADD A DESIGN EXTRA TO THIS BUYER
	#And Design Extras page link under Administration Menu is clicked for Flooring service offering
	#And Design extra named AutoDExtra is opened from the Design extras page under Adminstration menu.
	And Space Tree for the Subscriber is Selected
	And Buyer's list page is opened
	And A buyer with the following attributes is opened: BoraBora001,Automation101
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

	#And space tree for that Subscriber and Community has been selected 




#=========================================================================================================================================================	

@BVT2_SubscriberLevelMaterialTaxDesignExtrazb
Scenario: 3.5 UAT Verify User can overwrite the subscriber level Labor and Material Tax for Design Extra Flooring 
	Given the database is queried to find Design Extra Name, default Labor and Material tax rate are noted
		And Subscriber Setting under Administration Menu is opened
		And the Default Material Tax Rate is set to 74 in the Subscriber Settings page
		And the Update all Material tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And the Default Labor Tax Rate is set to 44 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And Design Extras for Flooring in Adminstration menu is clicked
		And Flooring DesignExtraName Testing17 is clicked
		And change in the Labor and Material sales tax of the Flooring Design Exra is verified in UAT
#=========================================================================================================================================================
#=========================================================================================================================================================

@BVT_ActivatingCancelledQuoteUAT
Scenario: 3.6 UAT Verify Flooring Scenario Creation from a Cancelled Quote
	Given the recently Cancelled quote is queried and noted the selected items in the database UAT
	Given Buyer's list page is opened
		And A buyer with the following attributes is opened: Cycle_13th_Tier1.1,AutoTstBuyer 
		And the 'View Quote History' button is clicked in the buyer info page for Flooring service offering
		And the recent Cancelled Quote is reactivated for flooring service offering in the Buyer info page two
		Given Buyer's list page is opened
		And A buyer with the following attributes is opened: Cycle_13th_Tier1.1,AutoTstBuyer 
		And the DB noted lists of items from the Pending Quote such as style, color, buyer price, area name in UAT
		And the flooring Quote status for the buyer is set to Cancelled in the buyer info page
		And the save button is clicked on the buyer information 
#=========================================================================================================================================================
#=========================================================================================================================================================


@BVt2_SbscrbrTax_DesignScenario
@BVT2_DesignScenario
Scenario: 3.7 UAT Subscriber Level Labor Tax 
	Given Subscriber Setting under Administration Menu is opened
	And the Default Labor Tax Rate is set to 70 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And the Default Material Tax Rate is set to 60 in the Subscriber Settings page
		And the Update all Material tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
	Given the database is queried to find a Flooring Design Scenario Total Upgrade Amount for a Specific Buyer (Labor Tax)
		And Subscriber Setting under Administration Menu is opened
		And the Default Labor Tax Rate is set to 60 in the Subscriber Settings page
		And the Update all labor tax rate checkbox is checked in the Subscriber Settings page
		And the Save button is clicked in the subscriber Settings page
		And Buyer's list page is opened
		And A buyer with the following attributes is opened: 0AutmtionTier1_Dont_delete101,AutoTstBuyer
		And A new flooring design scenario is created with the following attributes
		 | attributes           | value				|
		 | Buyer_Name           | AutoTstBuyer   |
		 | Design_scenario_Name | DSTesting101		|
		 | Set_as_Active	    | true				|
		 
		And flooring Room Editor page for the room named bedroom2 is opened
		And bedroom2 is upgraded with product TOLEDO 17"X17" in the flooring room editor page					
		And color is randomly selected in the color/Pattern drop down of the flooring room editor page
		And The Flooring room editor page is saved 
		And Design Scenario list page in the database query is opened
		#And change in the Design Scenario Total Amount from the Orginal amount noted in database query is verified
#=========================================================================================================================================================
#=========================================================================================================================================================

# 0AutmtionTier1_Dont_delete,AutoTstBuyer
Scenario: 3.8 Envision 
Then HDS Home page is displayed
	Given the subscriber is changed to Meritage Homes - AZ - Phoenix
	And Buyer's list page is opened
	And A buyer with the following attributes is opened: Bridges North 60s - 41040800000,YeEnvNew
	Given A new Envision scenario is created in the flooring scenario list page
	#Given The active Flooring design scenario is opened if Svc Offering is Flooring or CW
	Given A new flooring design scenario is created with the following attributes
		| attributes           | value                     |
		| Design_scenario_Name | newScenario103 |
		| Set_as_Active        | true                     |
	
	And Color and grout, if Tile rooms present, are added to all rooms per following
	 | Prod_Category_of_Rooms | color | grout |
	 | WHC					  |       |       |
	 | T-S                   |       |       | 
	When User clicks on the create quote button from the flooring selector page for the active design scenario
	#And User clicks on the create quote button from the flooring selector page for the active design scenario
	And Buyer's list page is opened
	And A buyer with the following attributes is opened: Bridges North 60s - 41040800000,YeEnvNew

	And the total upgradecost displayed in the flooring room selector page is noted
	And the flooring Quote status for the buyer is set to Signed in the buyer info page
	And user saves Buyer Info
	Given Envision login page is opened
	Given User logs in with user name dcmadminWestAZPhoenix and password bxgu739dnjp

	And Envision Design Center Manager page is opened for buyer named Automation

	And Envision Design Center page is opened
	When the total amount for Confirmed selections in the Envision Design Center
	Then the confirmed selections total in EDC equals the total upgrade cost in HDS
	
	#Given user switches to the opened hds browser window from Envision window
	#And the flooring Quote status for the buyer is set to Revision in the buyer info page
	#And user saves Buyer Info
	#And user switches to the opened Envision Design Center browser window from hds window
	#When Randomly selected rooms are upgraded in Envision flooring Estimator
	#Then the upgrade cost amount noted in flooring Estimator of Envision equals the upgrade amount in HDS Envision scenario

	#Given the active envision design scenario is deactivated in the flooring design scenario list page
	##Given a new browser is launched 
	#Given Envision login page is opened
	#Given User logs in with user name dcmadminWestAZPhoenix and password bxgu739dnjp
	#And Envision Design Center Manager page is opened for buyer named Automation
	#And Envision Design Center page is opened
	#Then the flooring estimator tab is not displayed in the envision design center page for the buyer
#=========================================================================================================================================================
#=========================================================================================================================================================
	
@EnvisionTest
Scenario: 3.9 Envision (Verify HDS/Envision flooring Estimator)
	Then HDS Home page is displayed
	Given the subscriber is changed to Meritage Homes - AZ - Phoenix
		And Buyer's list page is opened
		And A buyer with the following attributes is opened: Bridges North 60's - 41040800000,AutoEnvTest
		And the flooring Quote status for the buyer is set to Revision in the buyer info page Envi
		And user saves Buyer Info
	Given A new Envision scenario is created in the flooring scenario list page
	#Given The active Flooring design scenario is opened if Svc Offering is Flooring or CW
	Given A new flooring design scenario is created with the following attributes
		| attributes           | value                     |
		| Design_scenario_Name | newScenarioEnvision101 |
		| Set_as_Active        | true                     |
	
	And Color and grout, if Tile rooms present, are added to all rooms per following
	  | Prod_Category_of_Rooms | color | grout |
	  | WHC					   |       |       |
	  | Tile				   |       |       | 
	#And the Add New Item button is clicked in the Additional Items tab of the flooring room editor page bvt
	#And the Additional Items Editor field is displayed in the flooring room editor page 
	#And Additional items have been added to the room editor page
	
	#When the Add New Adjustment button is clicked in the Adjustments tab of the flooring room editor page bvt
	#Then the Adjustment Editor field is displayed in the flooring room editor page 
	#And the adjustment has been added to the rooms in the Room Editor page
	#And Reason for the Adjustment Editor has been selected to Builder Discount 
	#And the Price for the Adjustment Editior has been added and save
	#And the new Adjustment has been added and saved
	#And Additional Items on the Design Scenario page is confirmed
	And the total upgradecost displayed in the flooring room selector page is noted

	And User clicks on the create quote button from the flooring selector page for the active design scenario
	And User navigates to the buyer info page of the opened buyer
	And the flooring Quote status for the buyer is set to Signed in the buyer info page Env
	And user saves Buyer Info

	
	Given Envision login page is opened
	Given User logs in with user name dcmadminWestAZPhoenix and password bxgu739dnjp

	And Envision Design Center Manager page is opened for buyer named YeEnv27

	And Envision Design Center page is opened
	When the total amount for Confirmed selections in the Envision Design Center
	Then the confirmed selections total in EDC equals the total upgrade cost in HDS
	
	Given user switches to the opened hds browser window from Envision window
	And the flooring Quote status for the buyer is set to Revision in the buyer info page
	And user saves Buyer Info
	And user switches to the opened Envision Design Center browser window from hds window
	When Randomly selected rooms are upgraded in Envision flooring Estimator
	Then the upgrade cost amount noted in flooring Estimator of Envision equals the upgrade amount in HDS Envision scenario

	#Given user switches to the opened hds browser window from Envision window

	#Given the active envision design scenario is deactivated in the flooring design scenario list page
	#Given a new browser is launched 
	#Given Envision login page is opened
	#Given User logs in with user name dcmadminWestAZPhoenix and password bxgu739dnjp
	#And Envision Design Center Manager page is opened for buyer named YeEnv27
	#And Envision Design Center page is opened
	#Then the flooring estimator tab is not displayed in the envision design center page for the buyer
#=========================================================================================================================================================
#=========================================================================================================================================================
	
@HDS2Boomi_Quotes
Scenario: 4.0 Boomi (Verify HDS Quotes are refelected) 
	Then HDS Home page is displayed
	Given the subscriber is changed to Dream Finders - CO
	   And Buyer's list page is opened
	   And A buyer with the following attributes is opened: Harmony,Dell12
	   And  A new flooring design scenario is created with the following attributes
		| attributes           | value            |
		| Design_scenario_Name | testHDStoSAP_bvt5 |
		| Set_as_Active        | true             |
	
		And Color and grout, if Tile rooms present, are added to all rooms per following
		 | Prod_Category_of_Rooms | color | grout |
		 | WHC					  |       |       |
		 | Vinyl      			  |       |       |
		
		And User clicks on the create quote button from the flooring selector page for the active design scenario
		And User navigates to the buyer info page of the opened buyer
		And the flooring Quote status for the buyer is set to Signed in the buyer info page 
		And  user saves Buyer Info
	#trigger HDS to SAP Quote via boomi
		And Boomi Login page is opened in a new tab
		And User logs in to Boomi with user name it-sqljobnotices@isidc.com and password I$Ijobnotices
		And the 'HDS Quote to SAP' process is triggered in the Boomi AtomSphere page

		And user switches to the opened HDS Buyer Info page from the Boomi AtomSphere page
 	When the buyer info page is refreshed
	Then the flooring quote status for the buyer is Sent to ERP

	Given the flooring Quote status for the buyer is set to Revision in the buyer info page 
	When user saves Buyer Info
	Then the HDS Export header table in Database shows the quote status of Revision 

	Given User navigates to the buyer's scenario list/options selector Page for Flooring Service Offering
		And The active Flooring design scenario is opened if Svc Offering is Flooring or CW
		And flooring Room Editor page for the room named Whole House Carpet is opened
		And Whole House Carpet is upgraded with product BALANCE OF POWER 12' W in the flooring room editor page
			# this is temporary hard code until move to all ILG product
		And color is randomly selected in the color/Pattern drop down of the flooring room editor page
		And The Flooring room editor page is saved
		And User clicks on the create quote button from the flooring selector page for the active design scenario
		And User navigates to the buyer info page of the opened buyer
		And the flooring Quote status for the buyer is set to Signed in the buyer info page 
		And user saves Buyer Info
		And user switches to the opened Boomi AtomSphere page from the HDS Buyer info page
		And the 'HDS Quote to SAP' process is triggered in the Boomi AtomSphere page
		
		And user switches to the opened HDS Buyer Info page from the Boomi AtomSphere page
 		When the buyer info page is refreshed
		Then the flooring quote status for the buyer is Sent to ERP

		Given the flooring Quote status for the buyer is set to Cancelled in the buyer info page 
		When user saves Buyer Info
		Then the HDS Export header table in Database shows the quote status of Cancelled 
#=========================================================================================================================================================
#=========================================================================================================================================================
Scenario: StudioLink 

#Given HDS Home page is displayed
Given switched to StudioLink web app
Then Login into Studiolink using username zebibbekele@interiorlogicgroup.com and password Amen2020!
Then Administration button is clicked
When Inside Administration click assign design manager

#=========================================================================================================================================================
#=========================================================================================================================================================




