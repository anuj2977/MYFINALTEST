Feature: get the details of user 2

  Background: Set URL
    * url 'https://reqres.in/'

  @Now
  Scenario: Get the details of user 2
      Given path 'api/users'
      And param page = '2'
      When method GET
      Then status 200
      And match response.page == 2

  Scenario: Create a person
    Given path 'api/users'
    And request
    """
    {
    "name": "morpheus",
    "job": "leader"
    }
    """
    When method POST
    Then status 201
    Then match response == '#object'
    Then match response.name == 'morpheus'
    And match response.job == 'leader'
    And match response.id == "690"
    And match response.createdAt == "2021-05-18T10:44:03.296Z"

  Scenario: Get the name of the user 2
    Given path 'api/users'
    


