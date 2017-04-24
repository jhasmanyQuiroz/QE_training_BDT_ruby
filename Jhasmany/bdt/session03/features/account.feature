Feature: Create an account with next information: user name, country
  and zip code.
  Scenario: Validate that the user name was in lowercase, the country
    accepts any characters excepts digits and the zip code accepts only digits.
    Given I am on the Account page
    When I write the alvaro user name
    And I write the Bolivia country
    And I write the 591 zip code
    Then I validate that the information is correct.
