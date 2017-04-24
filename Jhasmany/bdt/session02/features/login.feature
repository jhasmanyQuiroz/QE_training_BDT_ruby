Feature: Verify that the log in the application is successful.
Scenario: Successful login
  Given I am on the login page
  and I log in with the "Alvaro" user name
  and the "c0n7r01_@7" password
  When I press "log in" button
  Then I should see the "Welcome Alvaro" message

  Scenario: Unsuccessfully login
    Given I am on the login page
    and I log in with the "Alvaro01" user name
    and the "c0n7r01_@7" password
    When I press "log in" button
    Then I should see the "Your user name or password are wrong" message
