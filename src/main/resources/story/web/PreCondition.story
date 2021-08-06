Description: Sign up to trello;

Scenario: Sign up to trello on main page

Given I am on the main application page
When I click on an element by the xpath '//div[@class='col-md-5 pl-md-2']'
Then the page with the URL 'https://trello.com/signup' is loaded
When I enter '<email>' in a field by the xpath '//input[@id='email']'
When I click on an element by the xpath '//input[@id='signup-submit']'
When I wait until an element with the xpath '//input[@id='displayName']' appears
When I enter '<fullName>' in a field by the xpath '//input[@id='displayName']'
When I wait until an element with the xpath '//button[@id='signup-submit']' appears
When I click on an element by the xpath '//button[@id='signup-submit']'
Then the number of elements found by the xpath '//iframe[@title='recaptcha challenge']' is equal to '1'
Examples:
|email                            |fullName                   |
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|
|#{generate(Internet.emailAddress)}|#{generate(Name.firstName)}|


