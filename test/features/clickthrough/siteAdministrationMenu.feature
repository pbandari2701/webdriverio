# ##SITE ADMINISTRATION MENU======================================================

@tc:2058 @clickthrough @bvt
Scenario: Verify_Site_Admin_Area_Types_page  
	Given HDS Home page is displayed
	When  Area Types link under Site Administration Menu is clicked
	Then  Area Typespage is loaded


#Area Types-New
@tc:2059   @clickthrough @bvt    
Scenario: Verify_Site_Admin_Area_Types_New
	Given HDS Home page is displayed
		And Area Types link under Site Administration Menu is clicked
	When the New button is clicked in the site-level Area Type page
	Then the modal for creating new Area type is displayed in the site-level Area Type page


#Area Types-Edit
@tc:2060 @clickthrough @bvt
Scenario: Verify_Site_Admin_Area_Types_Edit
	Given HDS Home page is displayed
		And Area Types link under Site Administration Menu is clicked
	When the Edit button is clicked for a randomly selected AreaType in the site-level Area Type page
	Then the Area Type editor Modal is displayed in the site-level Area Type page


#Area Types-Disable
@tc:2061 @clickthrough @bvt
Scenario: Verify_Site_Admin_Area_Types_disable
	Given HDS Home page is displayed
		And Area Types link under Site Administration Menu is clicked
	When the Disable button is clicked for a randomly selected AreaType in the site-level Area Type page
	Then the modal for disabling an Area type is displayed in the site-level Area Type page


# #Area Types-Delete
# @tc:2062 @wip @clickthrough @bvt
# Scenario: Verify_Site_Admin_Area_Types_delete
# 	Given HDS Home page is displayed
# 		And Area Types link under Site Administration Menu is clicked
# 	When the Delete button is clicked for a randomly selected AreaType in the site-level Area Type page
# 	Then the modal for deleting an Area type is displayed in the site-level Area Type page


@tc:2063 @clickthrough @bvt
Scenario: Verify_Site_Admin_Assign_Take_Off_page  
	Given HDS Home page is displayed
	When  Assign Take Offs page link under Site Administration Menu is clicked
	Then  Assign Take Offs page is loaded


#Assign Take Off--Missing Quantities Report
@tc:2064 @clickthrough @bvt
Scenario: Verify_Site_Admin_Assign_Take_Off_Missing_Qty's_Rprt_link
	Given HDS Home page is displayed
	When the Missing Quantities Report link in the Site Admin menu is clicked
	Then the Report Viewer page loaded

#Assign Take Offs-Edit
@tc:2065 @clickthrough @bvt
Scenario: Verify_Site_Admin_Assign_Take_Off_page_edit_bttn
	Given HDS Home page is displayed
		And  Assign Take Offs page link under Site Administration Menu is clicked
	When the Edit button is clicked for a randomly selected Takeoff in the site-level Assign Take Offs list page
	Then the take Off editor Modal is displayed in the site-level Assign Take Offs list page

#Assign Take Offs-Disable 
@tc:2067 @clickthrough @bvt
Scenario: Verify_Site_Admin_Assign_Take_Off_page_disable_bttn
	Given HDS Home page is displayed
		And  Assign Take Offs page link under Site Administration Menu is clicked
	When the Disable button is clicked for a randomly selected Takeoff in the site-level Assign Take Offs list page
	Then the Modal for disabling a take off is displayed in the site-level Assign Take Offs list page

#Assign Take Offs-Add Take Off 
@tc:2068 @clickthrough @bvt
Scenario: Verify_Site_Admin_Assign_Take_Off_page_add_TakeOff_bttn
	Given HDS Home page is displayed
		And  Assign Take Offs page link under Site Administration Menu is clicked
	When the Add take off button is clicked for a randomly selected Area Type in the site-level Assign Take Offs list page
	Then the Modal for adding a take off is displayed in the site-level Assign Take Offs list page

@tc:2069 @clickthrough @bvt
Scenario: Verify_Site_Admin_Patterns_page  
	Given HDS Home page is displayed
	When  Patterns link under Site Administration Menu is clicked
	Then  Patterns page is loaded 

@tc:2070 @clickthrough @bvt
Scenario: Verify_Site_Admin_Patterns_New_Pattern_bttn  
	Given HDS Home page is displayed
		And Patterns link under Site Administration Menu is clicked
	When the New Pattern button is clicked in the site-level Patterns list page
	Then the New Pattern Modal is displayed in the site-level patterns list page
 
@tc:2071 @clickthrough @bvt
Scenario: Verify_Site_Admin_Patterns_Edit_bttn
	Given HDS Home page is displayed
		And Patterns link under Site Administration Menu is clicked
		And Area Type Selected
	When the Edit button is clicked for a randomly selected Pattern in the site-level Pattern page
	Then the pattern editor Modal is displayed in the site-level patterns list page

@tc:2072 @clickthrough @bvt
Scenario: Verify_Site_Admin_Patterns_Copy_bttn
	Given HDS Home page is displayed
		And Patterns link under Site Administration Menu is clicked
		And Area Type Selected
	When the Copy button is clicked for a randomly selected Pattern in the site-level Patterns list page
	Then the Copy Pattern Modal is displayed in the site-level patterns list page

@tc:2073 @clickthrough @bvt
Scenario Outline: Verify_Site_Admin_Patterns_Modals_hide_image
	Given HDS Home page is displayed
		And Patterns link under Site Administration Menu is clicked
		And Area Type Selected 
		And the <button> is clicked for a randomly selected Pattern in the  Patterns list page
	When the hide link is clicked in the modal displayed in the site-level <pattern> page 
	Then the pattern image in <pattern> modal is not displayed
Examples: 
		| button  | pattern         |
		| Copy    | Copy_Pattern    |
		| Edit    | Edit_Pattern    |
		| Disable | Disable_Pattern |

@tc:2074 @clickthrough @bvt
Scenario: Verify_Site_Admin_Patterns_Edit_uploadNew Image
	Given HDS Home page is displayed
		And Patterns link under Site Administration Menu is clicked
		And Area Type Selected 
		And the Edit button is clicked for a randomly selected Pattern in the site-level Pattern page
	When the image is clicked in the Pattern Editor modal 
	Then file upload field is displayed in the Pattern editor modal

@tc:2075_2  @clickthrough @bvt
Scenario: Verify_Site_Admin_Patterns_Disable_bttn  
	Given HDS Home page is displayed
		And Patterns link under Site Administration Menu is clicked
		And Area Type Selected
	When the Disable button is clicked for a randomly selected Pattern in the site-level Patterns list page
	Then the Disable Pattern Modal is displayed in the site-level patterns list page

@tc:2075_3 @clickthrough @bvt
Scenario: Verify_Site_Admin_Patterns_Add_New_TO_bttn  
	Given HDS Home page is displayed
		And Patterns link under Site Administration Menu is clicked
		And Area Type Selected
	When the Add New TakeOff button is clicked for a randomly selected Pattern in the site-level Patterns list page
	Then the Add New TakeOff Modal is displayed in the site-level patterns list page

@tc:2075_4 @clickthrough @bvt
Scenario: Verify_Site_Admin_Patterns_Tracer_bttn
	Given HDS Home page is displayed
		And Patterns link under Site Administration Menu is clicked
		And Area Type Selected
	When the 'Tracer' button is clicked for a randomly selected Pattern in the site-level Patterns list page
	Then A new window for editing CW Pattern tracer is opened from the Site-Admin Patterns page

@tc:2075 @clickthrough @bvt
Scenario: Verify_Tagging_Prod_Categories_page  
	Given HDS Home page is displayed
	When  Tagging Product Categories page link under Site Administration Menu is clicked
	Then  Tagging Product Categories page is loaded

@tc:2076 @clickthrough @bvt
Scenario: Verify_Buyer_Types_page  
	Given HDS Home page is displayed
	When  Buyer Types Page link under Site Administration Menu is clicked
	Then  Buyer Types Page is loaded 

#Buyer Types - New
#46
@tc:2077 @clickthrough @bvt
Scenario: Verify_Buyer_Types_page_New_bttn 
	Given HDS Home page is displayed
		And Buyer Types Page link under Site Administration Menu is clicked
	When the New button is clicked in the Buyer Type list page
	Then the Buyer type editor page under Site Admin menu is loaded


#Buyer Types - Edit
#47
@tc:2078 @clickthrough @bvt
Scenario: Verify_Buyer_Types_page_Open
	Given HDS Home page is displayed
		And Buyer Types Page link under Site Administration Menu is clicked
    When the Open button is clicked for a randomly selected Buyer type in the Buyer Types list page
	Then the Buyer type editor page under Site Admin menu is loaded
