@test
Feature: BVT Click Through Functionality of HDS application

    Feature Description "This feature validate the Business Critical Functionality of the HDS Application"

Background: Pre Login as HDS Admin
    Given I am logged in to HDS as a Admin

@tc:2079 @clickthrough @bvt
Scenario: Verify_Admin_Category_Svc_Offering_listPage  
	Given HDS Home page is displayed
	When  Category Service Offering page link under Administration Menu is clicked
	Then  Category Service Offering page is loaded 

#Category Svc Offerings - New
#50
@tc:2080 @clickthrough @bvt
Scenario: Verify_Admin_Category_Svc_Offering_New_bttn  
	Given HDS Home page is displayed
		And Category Service Offering page link under Administration Menu is clicked
	When the New button is clicked in the Category Service Offering list page
	Then the Category Service Offering editor page is loaded

#Category Svc Offerings  - Edit
#51
@tc:2081 @clickthrough @bvt
Scenario: Verify_Admin_Category_Svc_Offering_Open  
	Given HDS Home page is displayed
		And Category Service Offering page link under Administration Menu is clicked
	When the Open button is clicked for a randomly selected Category in the Category Service Offering list page
	Then the Category Service Offering editor page is loaded
           
# ##ADMINISTRATION MENU======================================================
@tc:2082 @clickthrough @bvt
Scenario: Verify_Admin_Subscriber_Settings_page  
	Given HDS Home page is displayed
	When  Subscriber Settings page link under Administration Menu is clicked
	Then  Subscriber Settings page is loaded

# @tc:2083 @clickthrough @bvt
# #Subscriber Settings - Company setup - Flooring DD (max IM wast factore)
# #Subscriber Settings - Company setup - CW DD (max IM wast factore)
# Scenario Outline: Verify_Admin_Subscriber_Settings_page_MaxIM waste factor drop down bttn
# 	Given HDS Home page is displayed
# 		And Subscriber Settings page link under Administration Menu is clicked
# 	When the <Service_Offering> drop down for maximum install Method waste factor is clicked in the company setup tab of subscriber settings page
# 	Then a drop down for showing max install Method waste factor is displayed for <Service_Offering> service offering is displayed in the Subscriber Settings page
# Examples: 
# | Service_Offering |
# | Flooring         |
# | Counter and Wall |

#Subscriber Settings - Company setup
#Subscriber Settings - Repot setup - 
#Subscriber Settings - Email setup - 
#Subscriber Settings - Available Patterns- 

@tc:2084 @clickthrough @bvt
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


@tc:2085 @clickthrough @bvt        
Scenario: Verify_Pattern_Availability_page   
	Given HDS Home page is displayed
	When  Pattern Availability page link under Administration Menu is clicked
	Then  Pattern Availability page is loaded

@tc:2086 @clickthrough @bvt
Scenario: Verify_Admin_Flooring_Groups_listpage  
	Given HDS Home page is displayed
	When  Flooring Groups page link under Administration Menu is clicked
	Then  Flooring Groups page is loaded 

#Flooring Groups - New 
@tc:2087 @clickthrough @bvt
Scenario: Verify_Admin_Flooring_Groups_New_Bttn
	Given HDS Home page is displayed
		And Flooring Groups page link under Administration Menu is clicked
	When the New button is clicked in the in the Flooring Groups list page under Administration Menu
	Then the Flooring Groups editor page is loaded


#Flooring Groups - Open
@tc:2088 @clickthrough @bvt
Scenario: Verify_Admin_Flooring_Groups_pg_Open
	Given HDS Home page is displayed
		And Flooring Groups page link under Administration Menu is clicked
	When the Open button is clicked for a randomly selected group in the flooring group list page
	Then the Flooring Groups editor page is loaded

@tc:2089 @clickthrough @bvt
#Flooring Groups - Open - View History
Scenario: Verify_Admin_Flooring_Groups_Open_View_history
	Given HDS Home page is displayed
		And Flooring Groups page link under Administration Menu is clicked
		And the Open button is clicked for a randomly selected group in the flooring group list page
	When the 'view' button is clicked in the Flooring Group Editor page under Administration menu
	Then the view history page for the flooring group is loaded

@tc:2090 @clickthrough @bvt
Scenario: Verify_Diagram_Colors_page  
	Given HDS Home page is displayed
	When  Diagram Colors page link under Administration Menu is clicked
	Then  Diagram Colors page is loaded

@tc:2091 @clickthrough @bvt
Scenario: Verify_Admin_About_page  
	Given HDS Home page is displayed
	When  About page link under Administration Menu is clicked
	Then  About page is loaded 

@tc:2092 @clickthrough @bvt
Scenario Outline: Verify_Admin_Design_Extras
	Given HDS Home page is displayed
	When  Design Extras page link under Administration Menu is clicked for <ServiceOffering> service offering
	Then  Design Extras page is loaded
Examples: 
| ServiceOffering |
| Flooring        |
| Counter & Wall  |

@tc:2093 @clickthrough @bvt
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
@tc:2094 @clickthrough @bvt
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
# @tc:2095 @clickthrough @bvt @q1
# Scenario Outline: Verify_Admin_Design_Extras_Open_ProdSearch_Modal 
# 	Given HDS Home page is displayed
# 		And  Design Extras page link under Administration Menu is clicked for Counter and Wall service offering
# 		And the Open button is clicked for a randomly selected design Extra in the subscriber Design Extra list page
# 	# When the product search button is clicked in the design Extra page 
# 	# Then the Design Extra Item Selector Modal is displayed in the subscriber design extra page

#Design Extras - Open - Cancel 
#69
@tc:2096 @clickthrough @bvt
Scenario: Verify_Admin_Design_Extras_Open_Cancel_bttn
	Given HDS Home page is displayed
		And  Design Extras page link under Administration Menu is clicked for <ServiceOffering> service offering
		And the Open button is clicked for a randomly selected design Extra in the subscriber Design Extra list page
	When the Cancel button is clicked in the design Extra page
	Then the design extra editor panel is no longer displayed in the subscriber design extra page
Examples:
| ServiceOffering |
| Counter & Wall  |

@tc:2097 @clickthrough @bvt
Scenario: Verify_Admin_Tagging_Install_Methods_page  
	Given HDS Home page is displayed
	When  Tagging Install Methods page link under Administration Menu is clicked
	Then  Tagging Install Methods page is loaded

@tc:2098 @clickthrough @bvt
Scenario: Verify_Admin_Audit_Report_page  
	Given HDS Home page is displayed
	When  Audit Report page link under Administration Menu is clicked
	Then  Admin Audit Report page is loaded 
