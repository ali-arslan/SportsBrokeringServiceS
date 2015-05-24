Feature: View All Matches

	As a prospective user of the service
	I should be able to view all matches

	Background: Database is currently empty

	Given the following matches exist:
	|    Team1    |     Team2    |		Type 	   |
	|  Lahore    |    Auckland   | 	domestic 	|
	|  India     | 	Pakistan	  | international |

	And I am on the all teams page

	Scenario: View All Teams
	
	When I follow "View All Matches"
	Then I should see Lahore
	And I should see India
	And I should see Auckland
	And I should see Pakistan
