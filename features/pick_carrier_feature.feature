Feature: Pick carrier

  As a requester
  So that I can have my order taken by a carrier
  I want to pick a carrier from those who apply to take my order

  Background: I am on the marketplace page.
    Given the following addresses exist:
      |id | line1| line2| city | state | country | postal_code| phone_number | user_id |
      |1  |	915 West End Avenue|	Apt. 901 |	New York |	NY |	United States|	10025|	6463873259|	1|
      |2  |	2270 Broadway|	Floor1|	New York |	NY|	United States|	 10025|	6463873259	|1 |

    Given the following request exist:
      | id  | title               |requester_id | source_addr_id | dest_addr_id| expected_delivery_start | expected_delivery_end|
      | 1   | first request       |1            | 1              |      2      |2020-03-06 00:00:00      |2020-03-06 00:00:00    |
    Given the following users exist:
      | name | email                |  password_digest                                             | created_at          | updated_at          |
      | momo | momohama@hotmail.com | $2a$10$r6Xx4SFhZwqbWpo.FBrWOuyS/rcELToulfAnOnKD76HRmjjdADFsq | 2020-03-03 17:15:10 | 2020-03-05 22:36:55 |
    Given I am logged in
    Then I should see "User Center"
    Given I am on the marketplace page


Scenario: Requester pick a carrier
    Given I am logged in
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










