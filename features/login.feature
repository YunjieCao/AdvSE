Feature: Log in user

  As a concerned parent
  So that I can quickly browse movies appropriate for my family
  I want to see movies matching only certain MPAA ratings

Background: users have been added to database

  Given the following user_profiles exist:
  | name | email                |  password_digest                                             | created_at          | updated_at          |
  | momo | momohama@hotmail.com | $2a$10$r6Xx4SFhZwqbWpo.FBrWOuyS/rcELToulfAnOnKD76HRmjjdADFsq | 2020-03-03 17:15:10 | 2020-03-05 22:36:55 |

  Given I am on the login page

Scenario: log in user successfully
  Then I fill in "session_email" with "momohama@hotmail.com"
  Then I fill in "session_password" with "123456"
  When I press "Log in"
  Then I should see "User Center of momo"
