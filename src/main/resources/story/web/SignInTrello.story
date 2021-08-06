Description: Sign in to trello (task2);

Scenario: Sign in to trello and profile verification

Given I am on the main application page
When I click on an element by the xpath '//a[@class='btn btn-sm btn-link text-primary']'
Then the page with the URL 'https://trello.com/login' is loaded
When I login as a registered user
When I wait until an element with the xpath '//button[@data-test-id='header-member-menu-button']' appears
Then the page with the URL 'https://trello.com/krot14/boards' is loaded
When I click on an element by the xpath '//button[@data-test-id='header-member-menu-button']'
When I click on an element by the xpath '//a[@data-test-id='header-member-menu-profile']'
Then the page with the URL 'https://trello.com/krot14' is loaded

