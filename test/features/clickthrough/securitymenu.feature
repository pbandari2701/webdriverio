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
