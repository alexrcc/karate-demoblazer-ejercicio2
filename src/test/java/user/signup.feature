Feature: Post user https://api.demoblaze.com/signup
  Background:
    * url "https://api.demoblaze.com"
    * path "/signup"
  @SingUp
  Scenario Outline: Create user <idcase>
    When request
    """
    {
  "<username>": "<Vusername>",
  "<password>": "<Vpassword>",
    }
    """
    And method POST
    Then status <statuscode>
    And match response == <response>
    Examples:
      |idcase|id|username|Vusername   |password  |Vpassword|statuscode|response|
      |case 1|id|username|alex19013    | password |123456789|200 |'""\n'       |
      |case 2|id|username|alex19007    | password |123456789|200 |{"errorMessage":"This user already exist."}|
