Feature: Login to Cubits

Scenario: Wrong password Login error
Given I am on the Cubits login page
And I am not currently logged in
Then I should see "LOG IN TO CUBITS"
When I fill in "user[email]" with "jarovoj@bigmir.net"
And I fill in "user[password]" with "test"
And I click Login on next page
Then I should see "INVALID EMAIL OR PASSWORD"

Scenario: Wrong email Login error
Given I am on the Cubits login page
And I am not currently logged in
Then I should see "LOG IN TO CUBITS"
When I fill in "user[email]" with "fake@gmail.com"
And I fill in "user[password]" with "testtest!"
And I click Login on next page
Then I should see "INVALID EMAIL ADDRESS OR PASSWORD"

Scenario: Positive Login
Given I am on the Cubits home page
And I am not currently logged in
Then I should see "LOGIN"
When I click "Login"
Then I should see "LOG IN TO CUBITS"
When I fill in "user[email]" with "jarovoj@bigmir.net"
And I fill in "user[password]" with "testtest!"
And I click Login on next page
Then I should see "VERIFY ME"

