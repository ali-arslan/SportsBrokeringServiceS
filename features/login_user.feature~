Feature: Valid user logs in

  As a valid user of the website
  So I can use the functionality provided
  I should be able to login with a valid username and password

Background: Given that the following user exists

  The following user exists
  | Username | password |
  | aaaa     | 123456   |

  And I am on the Jua homepage

Scenario: Login with valid username and password
  When I set the username to aaaa
  When I set the password to 123456
  Then I should see the message "You have successfully logged in!"
  And I am on the user page

Scenario: Login with invalid username and password
  When I set the username to billu
  When I set the password to LordTitos
  Then I should see the message "Incorrect Password. Try again."
  And I should be on the home page