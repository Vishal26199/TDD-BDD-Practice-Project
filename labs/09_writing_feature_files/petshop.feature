Feature: Search for pets by category

As a pet shop customer
I need to be able to serach for a pet by category
So that I should see only the category which I am interested in buying

Background:
    Given I have following pets
        | name  | category  | available |
        | Fido  | dog       | True      |
        | Kitty | cat       | True      |
        | Leo   | lion      |  False    |

Scenario: Search for dogs
    Given I am on "Home Page"
    When I set the "Category" to "dog"
    And I click the "Search" button
    Then I should see the message "Success"
    And I should see "Fido" in results
    But I should not see "Kitty" in results
    And I should not see "Leo" in results
