Feature: Pick carrier

  As a requester
  So that I can have my order taken by a carrier
  I want to pick a carrier from those who apply to take my order

  Background: some requests exist
    Given the following addresses exist:
      |id | line1| line2| city | state | country | postal_code| phone_number | user_id |
      |1  |	915 West End Avenue|	Apt. 901 |	New York |	NY |	United States|	10025|	6463873259|	1|
      |2  |	2270 Broadway|	Floor1|	New York |	NY|	United States|	 10025|	6463873259	|1 |

    Given the following request exist:
      | id  | title               |requester_id | carrier_id  | status  |source_addr_id | dest_addr_id| expected_delivery_start | expected_delivery_end|
      | 1   | first request       |1            | 1           |   2     |1              |      2      |2020-03-06 00:00:00      |2020-03-06 00:00:00    |
    Given the following user_profiles exist:
      |id | name | email                |  password_digest                                             | created_at          | updated_at          |
      |1  | momo | momohama@hotmail.com | $2a$10$r6Xx4SFhZwqbWpo.FBrWOuyS/rcELToulfAnOnKD76HRmjjdADFsq | 2020-03-03 17:15:10 | 2020-03-05 22:36:55 |



  Scenario: Requester pick a carrier
    Given I am on the login page
    Then I fill in "session_email" with "momohama@hotmail.com"
    Then I fill in "session_password" with "123456"
    When I press "Log in"
    Then I should see "User Center"
    Then I follow "Update Status"
    Then I should see "Choose next status"
    When I choose "next_status_3"
      #choose for radio button, check for check box
    Then I press "Update to next status"
    Then I should see "Successfully pick up"

  Scenario: Reject update after finished
    Given I am on the login page
    Then I fill in "session_email" with "momohama@hotmail.com"
    Then I fill in "session_password" with "123456"
    When I press "Log in"
    Then I should see "User Center"
    Then I follow "Update Status"
    Then I should see "Choose next status"
    When I choose "next_status_5"
      #choose for radio button, check for check box
    Then I press "Update to next status"
    Then I should see "Finished"
    Then I follow "Update Status"
    Then I should see "Already finished."











