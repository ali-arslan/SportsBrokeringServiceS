Feature: Place a Bet

	As a prospective user of the service
	I should be able to bet on a match
	So I can earn money

	Background: Database is currently empty

	Given the following matches1 exist:
	|    Team1    |     Team2    |		Type 	   |
	|  Lahore    |    Auckland   | 	domestic 	|

	Given the following user exists
   | Username | password |
   | mesi     | aa       |

	And I am on the all matches page

	Scenario: Place a Bet
	
	When I follow "Sign In"
	When I fill in "username_field" with "mesi"
	And I fill in "password_field" with "aa"
	And I follow by clicking button "Log in"
	Then I am on the all matches page
	And I follow "Place Bet"
	When I fill in "amount" with "100"
	When I fill in "matchID" with "1"
	And I select "Team1"
	And I follow by clicking button promptly "Place Bet"		
	Then I should see the message "Bet was successfully placed."
