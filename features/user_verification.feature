Feature: Create and view the verification of the user

As a carrier
So that I can help others and make some money
I want to apply to help a user complete his request

Background: some requests exist
    Given the following user_profiles exist:
    |id | name  | email               |  password_digest                                             | created_at          | updated_at          |
    |1  | user1 | user1@sterna.com    | $2a$10$Vge8AxfIvE4wRcafM7HCgeqR9YJ./Buvp2wzZomxDXK2F/x4jX5gO | 2020-03-03 17:15:10 | 2020-03-05 22:36:55 |
    |2  | user2 | user2@sterna.com    | $2a$10$Vge8AxfIvE4wRcafM7HCgeqR9YJ./Buvp2wzZomxDXK2F/x4jX5gO | 2020-03-04 17:15:10 | 2020-03-04 17:15:10 |
    |3  | user3 | user3@sterna.com    | $2a$10$Vge8AxfIvE4wRcafM7HCgeqR9YJ./Buvp2wzZomxDXK2F/x4jX5gO | 2020-03-04 17:15:10 | 2020-03-04 17:15:10 |

    Given the following verifications exist:
    |  id  |  user_id   |  status   | start_date              | end_date             |
    |  1   |    2       |    1      | 2020-01-01 00:00:00     | 2021-12-31 00:00:00  |
    |  2   |    3       |    1      | 2010-01-01 00:00:00     | 2011-12-31 00:00:00  |

Scenario: User create new verification
    Given I am on the login page
    Then I fill in "session_email" with "user1@sterna.com"
    Then I fill in "session_password" with "654321"
    When I press "Log in"
    Then I should see "User Center"
    
    Then I should see "Create New Verification"
    Then I follow "Create New Verification"
    Then I should see "Available start date"
    
    Then I select "2020" from "user_verification_start_date_1i"
    Then I select "January" from "user_verification_start_date_2i"
    Then I select "1" from "user_verification_start_date_3i"

    Then I select "2021" from "user_verification_end_date_1i"
    Then I select "December" from "user_verification_end_date_2i"
    Then I select "31" from "user_verification_end_date_3i"

    Then I press "Save Changes"

    Then I should see "View Current Verification"
    Then I follow "View Current Verification"

    Then I should see "Available Start Date: January 01, 2020"
    Then I should see "Available End Date: December 31, 2021"

Scenario: Verification with End_date in the future is valid
    Given I am on the login page
    Then I fill in "session_email" with "user2@sterna.com"
    Then I fill in "session_password" with "654321"
    When I press "Log in"
    Then I should see "User Center"
    Then I should see "View Current Verification"

Scenario: Outdated verification will be invalid
    Given I am on the login page
    Then I fill in "session_email" with "user3@sterna.com"
    Then I fill in "session_password" with "654321"
    When I press "Log in"
    Then I should see "User Center"
    Then I should see "Create New Verification"
