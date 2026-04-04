Feature:Validating Place API's	
@AddPlace
Scenario Outline:: Verify if place is being Succesfully added using AddPlaceAPI
    Given Add Place Payload with "<name>" "<language>" "<address>"
    When User calls "AddPlaceAPI" with "POST" http request
    Then API call got success with status code 200
    And "status" in response body is "OK"
    And "scope" in response body is "APP" 
    And verify place_id created maps to "<name>" using "GetPlaceAPI"
    
Examples:
| name  | langauge | address |
| Akash | English  | Pune    |
#| Aniket| Marathi  | Mumbai  |

@DeletePlace
Scenario: Verify if Delete functionality is working

	Given DeletPlace Payload
	When User calls "DeletePlaceAPI" with "POST" http request
	Then API call got success with status code 200
	And "status" in response body is "OK"

