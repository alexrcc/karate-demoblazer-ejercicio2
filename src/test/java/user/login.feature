Feature: Post user https://api.demoblaze.com/login
  Background:
    * url "https://api.demoblaze.com"
    * path "/login"
  @Login
  Scenario Outline: Login user <idcase>
    When request
    """
    {
  "<username>": "<Vusername>",
  "<password>": "<Vpassword>",
    }
    """
    And method POST
    Then status <statuscode>
    And match response contains <response>
    Examples:
      |idcase|username|Vusername   |password  |Vpassword|statuscode|response|
      |case 1|username|horacioss1    | password |1234567890|200 |'Auth_token'       |
      |case 2|username|alexruben19007    | password |1111111|200 |{"errorMessage":"User does not exist."}{"errorMessage":"Wrong password."}|
      |case 2|username|horacioss1    | password |1111111|200 |{"errorMessage":"Wrong password."}|