Description: 'UI controls (any) validation (task3)';

Scenario: Create new board

Given I am on the main application page
When I click on an element by the xpath '//a[@class='btn btn-sm btn-link text-primary']'
Then the page with the URL 'https://trello.com/login' is loaded
When I login as a registered user
When I wait until an element with the xpath '//button[@data-test-id='header-member-menu-button']' appears
Then the page with the URL 'https://trello.com/krot14/boards' is loaded
When I click on an element by the xpath '//a[@data-test-id='home-link']'
When I click on an element by the xpath '//button[@class='maVFwmlfoQ_I_L']'
When the condition '#{eval("<class>"=="_2ylCaWqSZTbYmL")}' is true I do 
|step|
|When I enter '#{generate(regexify '[a-z]{5}[A-Z]{2}')}' in a field by the xpath '//input[@data-test-id='create-board-title-input']'|    
When I find = '1' elements By.xpath(//button[@class='_3eEh_cvwCUDPos _1tlAH1MdVHp_1W']) and while they exist do up to 5 iteration of 
|step|
|When I click on an element by the xpath '//button[@class='_3eEh_cvwCUDPos _1tlAH1MdVHp_1W']'| 
When I wait until an element with the xpath '//div[@class='_2ylCaWqSZTbYmL']' disappeares
Then the page with the URL 'https://trello.com/' is loaded