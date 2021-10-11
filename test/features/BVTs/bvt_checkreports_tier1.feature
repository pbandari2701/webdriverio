Feature: BVT Check Reports Tier1 Feature

    Feature Description "This feature validate the Business Critical Functionality of the HDS Application"

Background: Pre Login as HDS Admin
    Given I am logged in to HDS as a Admin

@bvt @tier1 @wip
Scenario Outline: Check Quote Reports generated Off of Active designs/Option Selections
	Given I am on Buyer list page
		And A buyer with the following attributes is opened <Community_Name> , <Buyer_Name>
	 	And User navigates to the buyer's scenario options selector Page for <Service_offering> Service Offering
	 	And User navigates to the Buyer report page for <Service_offering>
	When The create quote button is clicked in the Buyer Report page
	Then A quote should be successfully created for <Service_offering>
Examples: 
	| Service_offering  | Buyer_Name   | Community_Name    |
	| Flooring          | autotest	   | Westford 3s PH 2  |
    | Lifestyle Options | autotest	   | Westford 3s PH 2  |
	| Wall Tile         | autotest	   | Westford 3s PH 2  |

@bvt @tier1
Scenario Outline: Check CalcBreakDown report off of Active Design
	Given I am on Buyer list page
		And A buyer with the following attributes is opened <Community_Name> , <Buyer_Name>
		And User navigates to the buyer's scenario options selector Page for <Service_offering> Service Offering
		And User navigates to the Buyer report page for <Service_offering>
	When User Clicks on the Calculator Breakdown Report Link for <Service_offering>
	Then A Calculator breakdown report for the <Service_offering> design scenario is successfully generated
Examples: 
	| Service_offering  | Buyer_Name   | Community_Name    |
	| Flooring          | autotest	   | Westford 3s PH 2  |
 	| Wall Tile         | autotest	   | Westford 3s PH 2  |

@bvt @tier1 
Scenario Outline: Check Preliminary Design Summary Reports
	Given I am on Buyer list page
		And A buyer with the following attributes is opened <Community_Name> , <Buyer_Name>
		And User Navigates to The Buyer's Report page
		And User navigates to the report configuration page for Preliminary Design summary report
		And User selects <Service_offering> in the Service offering Drop down of the Configuration page for Preliminary Design summary report
	When User clicks recalculate button to generate a report
    Then A Preliminary design summary report is successfully generated for <Service_offering>

Examples: 
	| Service_offering  | Buyer_Name   | Community_Name    |
	| Flooring          | autotest	   | Westford 3s PH 2  |
    | LifeStyle Options | autotest	   | Westford 3s PH 2  |
	| Wall Tile         | autotest	   | Westford 3s PH 2  |

@bvt @tier1
Scenario Outline: Check Flooring Quote Calculator breakdown Reports
	Given I am on Buyer list page
		And A buyer with the following attributes is opened <Community_Name> , <Buyer_Name>
		And User Navigates to The Buyer's Report page
	When User clicks on Flooring Quote Calculator Breakdown Link in the Buyer's Report list page
    Then A Flooring Calculator Breakdown Quote report is successfully generated
Examples: 
	| Service_offering | Buyer_Name    | Community_Name   |
	| Flooring         | autotest      | Westford 3s PH 2 |

@bvt @tier1
Scenario Outline: Check Job Report - Material and Labor Breakdown
	Given I am on Buyer list page
		And A buyer with the following attributes is opened <Community_Name> , <Buyer_Name>
		And User Navigates to The Buyer's Report page
		And User navigates to the report configuration page for the Job detail report
		And User selects <Service_offering> in the Service offering Drop down of the Configuration page for the Job detail report
	When  User clicks recalculate button to generate a pdf report
    Then A material and Labor breakdown report Cost Breakdown report is successfully generated for <Service_offering>
Examples: 
	| Service_offering      | Buyer_Name    | Community_Name   |
	| All Service Offerings | autotest      | Westford 3s PH 2 |

@bvt @tier1
Scenario Outline: Check Quote Report - Design Summary Particpant
	Given I am on Buyer list page
		And A buyer with the following attributes is opened <Community_Name> , <Buyer_Name>
		And User Navigates to The Buyer's Report page
		And User navigates to the report configuration page for the Design Summary - Participant report
	When User clicks recalculate button to generate a report
    Then A Design Summary - Participant report is successfully generated
Examples: 
	| Service_offering       	| Buyer_Name | Community_Name   |
	|   All Service Offerings	| autotest   | Westford 3s PH 2 |

@bvt @tier1
Scenario Outline: Check Design Summary Buyer - Quote Report
	Given I am on Buyer list page
		And A buyer with the following attributes is opened <Community_Name> , <Buyer_Name>
		And User Navigates to The Buyer's Report page
		And User navigates to the report configuration page for Design Summary Buyer - Quote Report
		And User selects <Service_offering> in the Service offering Drop down of the Configuration page for Design Summary Buyer - Quote Report
	When User clicks recalculate button to generate a report
    Then A Design Summary Buyer Quote Report for <Service_offering> is successfully generated
Examples: 
	| Service_offering      | Buyer_Name   | Community_Name   |
	| All Service Offerings | autotest     | Westford 3s PH 2 |

