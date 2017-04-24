Feature: Verify that the "www.google.com.bo" page is working correctly.
Scenario: Verify that the "www.google.com.bo" page execute a searched to
  press the "Google search" button.
  Given I am on main page
  And I write a "design patterns" text
  When I press the "Google Search button"
  Then A list of pages is displayed.

Scenario: Verify that the "www.google.com.bo" page execute a searched to
  press the "Enter" key.
  Given I am on main page
  And I write a "design patterns" text
  When I press the "Enter key"
  Then A list of pages is displayed.

  Scenario: Verify that the "www.google.com.bo" page execute a searched
    through the voice assistant.
    Given I am on main page
    When I press the "Search by voice icon"
    And I pronounce the word I want to search.
    Then A list of pages is displayed.

    Scenario: Verify that in "www.google.com.bo" page it is possible log in into
      gmail account.
      Given I am on main page
      When I press the "Sign in button"
      And I write the "alvaro.olivera" username
      And I write the "c0n7r01_@7" password
      Then the gmail page is displayed.
