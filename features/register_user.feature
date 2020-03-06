Feature: User Registration

  As a visitor
  So that I can act as a member
  I want to register and become a member

Background: I am on the home page.

  Given I am on the signup page
  Then I should see "Sign up"

Scenario: User fill in the new_user_profile form.

  Then I fill in "user_profile_name" with "momohama"
  Then I fill in "user_profile_email" with "momohama@gmail.com"
  Then I fill in "user_profile_password" with "123456"
  Then I fill in "user_profile_password_confirmation" with "123456"
  Then I press "Create my account"
  Then I should see "Welcome to Sterna!"
