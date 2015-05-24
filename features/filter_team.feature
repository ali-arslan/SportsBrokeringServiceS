Feature: Filter teams
	
	As a user of the service
	I should be able to filter teams
	So I can view those I am interested in

	Background: Database is currently empty

	Given the following teams exist:
	|    Name    |     Type      |
	|  Lahore    |   domestic    |
	|  India     | international |

	And I am on the all teams page

	Scenario: Filter teams based on type
	
	When I check the following types: "Domestic"
	And I uncheck the following types: "International"
	And I click on filter
	Then I should see Lahore
	And I should not see India
	
