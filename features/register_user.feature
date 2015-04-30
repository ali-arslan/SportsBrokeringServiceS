Feature: New user Registers

  As a prospective user of the service
  So that I can use the functionality provided
  I should be able to sign up with my information

  Background: Database is currently empty

  Given that the following user wants to sign up
  | Username | password | Name | Balance | DOB      |
  | aaaa     | 123456   | Gul  | 3000    | 2001,2,3 |

    And I am on the new user page

  Scenario: Sign up with valid information
    When I set the username to "aaaa"'"
    When I set the password to '123456'
    When I set the Name to "Gul"
    When I set the DOB to '2001,2,3'
    When I set the Balance to "3000"
    Then I should see the message "User was successfully created."

#  Scenario: Sign up with invalid information
#    When I set the username to ''
#    When I set the password to '123456'
#    When I set the Name to 'Gul'
#    When I set the DOB to '2001,2,3'
#    Then I should see the message "User was not created."