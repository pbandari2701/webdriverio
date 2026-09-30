# ##ACCOUNTING======================================================
@test
Feature: BVT Click Through Functionality of HDS application

    Feature Description "This feature validate the Business Critical Functionality of the HDS Application"

Background: Pre Login as HDS Admin
    Given I am logged in to HDS as a Admin

@tc:2099 @clickthrough @bvt
Scenario: Verify_Accounting_Complete_Qoute_Buyers_page  
	Given HDS Home page is displayed
	When  Complete Quote or Buyers page link under Accounting Menu is clicked
	Then  Complete Quote or Buyers page is loaded

@tc:2100 @clickthrough @bvt
Scenario: Verify_Accounting_Set_Cut_Off_Dates_page  
	Given HDS Home page is displayed
	When  Set Cut Off Dates page link under Accounting Menu is clicked
	Then  Set Cut Off Dates page is loaded 


@tc:2101 @clickthrough @bvt
#Commission Forms  16
Scenario: Verify_Accounting_CommissionForms_list page 
	Given HDS Home page is displayed
	When  Commission Forms page link under Accounting Menu is clicked
	Then  the Commission Forms list page under Accounting menu is loaded

@tc:2102 @clickthrough @bvt
#Commission Forms - Open 18
Scenario: Verify_Accounting_CommissionForms_Open (editor) 
	Given HDS Home page is displayed
		And  Commission Forms page link under Accounting Menu is clicked
	When the Open button for the first Commission form  listed in the commission forms list page is clicked
	Then  the Commission Form detail page under Accounting menu is loaded 
