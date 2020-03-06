Feature: Pick carrier

  As a requester
  So that I can have my order taken by a carrier
  I want to pick a carrier from those who apply to take my order

  Background: I am on the marketplace page.
    Given the following request exist:
      | id  | title               |requester_id |
      | 1   | first request       |1            |
    Given the following users exist:
      |name   | email           |  password  |
      |Yunjie |test@columbia.edu| cccc123456|
    Given I am logged in
    Given I am on marketplace page


Scenario: Requester pick a carrier
    Then I should see "first request"
    Then I follow "More details"
    Then I press "Apply to be carrier"
    Then I should see "User Center"
#
#    Then I follow "Add new user_profile"
#    Then I should see "Create New User"
#    Then I fill in "user_profile_name" with "testuser1"
#    Then I fill in "user_profile_email" with "testuser1@test.com"
#    Then I fill in "user_profile_occupation" with "student"
#    Then I press "Save Changes"
#    Then I should see "testuser1 was successfully created."










