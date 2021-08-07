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
When I COMPARE_AGAINST baseline with `profile`
When I click on an element by the xpath '//a[@data-test-id='header-home-button']'
When I COMPARE_AGAINST baseline with `example` ignoring:
|ELEMENT                                                |ACCEPTABLE_DIFF_PERCENTAGE|
|By.xpath(//ul[@class='boards-page-board-section-list'])|10                        |
When I wait until an element with the xpath '//li[@data-test-id='templates']' appears
When I click on an element by the xpath '//li[@data-test-id='templates']'
Then the page with the URL 'https://trello.com/templates' is loaded
When I wait until an element with the xpath '//div[@class='byKKEr1NPwCQYx oBtm_2ZjPkCDiJ']' appears
When I COMPARE_AGAINST baseline with `template` ignoring:
|ELEMENT                                   |ACCEPTABLE_DIFF_PERCENTAGE|
|By.xpath(//span[@class='_1RIk1Ra33KeD7M'])|10                         |
using screenshot configuration:
|scrollableElement                              |webHeaderToCut|webFooterToCut|scrollTimeout|screenshotShootingStrategy|
|By.xpath(//div[@class='home-sticky-container'])|80            |0             |PT1S         |SIMPLE                    |
When I click on an element by the xpath '//button[@data-test-id='header-create-menu-button']'
When I COMPARE_AGAINST baseline with `create` ignoring:
|ELEMENT                                   |ACCEPTABLE_DIFF_PERCENTAGE|
|By.xpath(//span[@class='_1RIk1Ra33KeD7M'])|5                         |
When I wait until an element with the xpath '//button[@data-test-id='header-create-board-from-template-button']' appears
When I click on an element by the xpath '//button[@data-test-id='header-create-board-from-template-button']'
When I COMPARE_AGAINST baseline with `createFromTemplate` ignoring:
|ELEMENT                                   |ACCEPTABLE_DIFF_PERCENTAGE|
|By.xpath(//span[@class='_1RIk1Ra33KeD7M'])|5                         |