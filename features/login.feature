Feature: Cubits login

Scenario: Positive scenario for login to cubits

Given I am on cubits.com
When I click "Login"
When I login with "yacoubovich.ivashka@gmail.com" username and "111111a!" password
Then I should see text "WELCOME TEST" 

Scenario: Negative scenario login with incorrect password

Given I am on cubits.com
When I click "Login"
When I login with "yacoubovich.ivashka@gmail.com" username and "111111a" password
Then I should see text "INVALID EMAIL OR PASSWORD" 

Scenario: Negative scenario login with incorrect email

Given I am on cubits.com
When I click "Login"
When I login with "blabla@yandex.ru" username and "111111a!" password
Then I should see text "INVALID EMAIL OR PASSWORD" 

