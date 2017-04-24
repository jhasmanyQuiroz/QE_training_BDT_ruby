Feature: Create a gmail account.
  Scenario: Verify that an user is created the correct way.
    Given I am on the gmail page
    When I write the Alvaro Olivera name
    And I write the darien username
    And I write the c0n7r01_@7 password
    And I write again the c0n7r01_@7 password
    And I write my may-28-1995 birthday
    And I write the male gender
    And I write the 73756024 mobile phone
    Then I validate that the information is correct.
