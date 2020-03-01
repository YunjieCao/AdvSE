Feature: User Registration
 
  As a visitor
  So that I can act as a member
  I want to register and become a member

Background: I am on the user_profile list page.

  Given I am on the users page
  Then I should see "User_profile"

Scenario: User fill in the registration form.

  Then I follow "Add new user_profile"
  Then I should see "Create New User"
  Then I fill in "user_profile_name" with "testuser1"
  Then I fill in "user_profile_email" with "testuser1@test.com"
  Then I fill in "user_profile_occupation" with "student"
  Then I press "Save Changes"
  Then I should see "testuser1 was successfully created."










