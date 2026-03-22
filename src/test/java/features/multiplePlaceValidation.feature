Feature:Validating Place API's	

Scenario Outline:: Verify if place is being Succesfully added using AddPlaceAPI
    Given Add Place Payload with "<name>" "<language>" "<address>"
    When User calls "<AddPlaceAPI>" with POST http request
    Then API call got success with status code 200
    And "status" in response body is "OK"
    And "scope" in response body is "APP" 
    
Examples:
| name  | langauge | address |
| Akash | English  | Pune    |
| Aniket| Marathi  | Mumbai  |