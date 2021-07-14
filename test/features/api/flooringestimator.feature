Feature: Flooring Estimator API Tests

   Scenario: Get List Of Envision Enabled Scenario's for Buyers
        Given I make a GET request to /v1/buyers/scenarios?token={token} 
        When  I receive a response
        Then I expect response should have a status of 200
        And I expect the response should have a json data as below
        """
        { "Id": 271498, 
          "Name": "Envision (Flooring Estimator)", 
          "Status": "Preliminary", 
          "Price": 1310 
          } 
        """

   Scenario: Get Scenario Information for a Scenario ID
        Given I make a GET request to /v1/scenarios/{scenarioId}?token={token}
        When I receive a response
        Then I expect response should have a status of 200
        And I expect the respose should have a json data
         