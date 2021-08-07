Description: 'UI controls (any) validation (task3)';

Scenario: Create new workplace

Given I am on the main application page
When I click on an element by the xpath '//a[@class='btn btn-sm btn-link text-primary']'
Then the page with the URL 'https://trello.com/login' is loaded
When I login as a registered user
When I wait until an element with the xpath '//button[@data-test-id='header-member-menu-button']' appears
Then the page with the URL 'https://trello.com/krot14/boards' is loaded
When I click on an element by the xpath '//span[@data-test-id='home-team-tab-name']'
When the condition '#{eval("<data-test-id>"=="home-team-tables-tab")}' is true I do 
|step|
|When I click on an element by the xpath '//a[@data-test-id='home-team-tables-tab']'|
|Then the page with the URL 'https://trello.com/krotsworkspace/tables' is loaded|