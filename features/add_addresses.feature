Feature: Add address

    As a member
    So that I can use the addresses later
    I want to add address in my address book

Background: Database has following data

    Given the following user_profiles exist:
    | id | name | email                |  password_digest                                             | created_at          | updated_at          |
    | 1  | momo | momohama@hotmail.com | $2a$10$r6Xx4SFhZwqbWpo.FBrWOuyS/rcELToulfAnOnKD76HRmjjdADFsq | 2020-03-03 17:15:10 | 2020-03-05 22:36:55 |


Scenario: Add address to the address book
    Given I am on the login page
    Then I fill in "session_email" with "momohama@hotmail.com"
    Then I fill in "session_password" with "123456"
    When I press "Log in"
    Then I should see "User Center of momo"

    Given I am on the address book page
    Then I follow "Add new address"
    Then I should see "Create New Address"

    Then I fill in "address_line1" with "915 West End Avenue"
    Then I fill in "address_line2" with "Apt. 901"
    Then I fill in "address_city" with "New York"
    Then I fill in "address_state" with "NY"
    Then I fill in "address_country" with "United States"
    Then I fill in "address_postal_code" with "10025"
    Then I fill in "address_phone_number" with "6463873259"
    Then I press "Save Changes"
    Then I should see "successfully created"


  
