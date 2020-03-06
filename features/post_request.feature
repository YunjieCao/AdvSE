Feature: Post Request

    As a member
    So that others can view my request and take it
    I want to post my request on the marketplace

Background: Database has following data

    Given the following user_profiles exist:
    | id | name | email                |  password_digest                                             | created_at          | updated_at          |
    | 1  | momo | momohama@hotmail.com | $2a$10$r6Xx4SFhZwqbWpo.FBrWOuyS/rcELToulfAnOnKD76HRmjjdADFsq | 2020-03-03 17:15:10 | 2020-03-05 22:36:55 |

    Given the following addresses exist:
    |id | line1| line2| city | state | country | postal_code| phone_number | user_id |
    |1  |	915 West End Avenue|	Apt. 901 |	New York |	NY |	United States|	10025|	6463873259|	1|
    |2  |	1st Ave |	Floor1|	Seattle |	WA|	United States|	 98765|	6463873259	|1 |


Scenario: Post request to the marketplace
    Given I am on the login page
    Then I fill in "session_email" with "momohama@hotmail.com"
    Then I fill in "session_password" with "123456"
    When I press "Log in"
    Then I should see "User Center of momo"

    Given I am on the marketplace page
    Then I follow "I want to post new request"
    Then I should see "Post New Request"

    Then I fill in "request_title" with "Nintendo Switch"
    Then I fill in "request_description" with "I want an US limited version Nintendo Switch"
    Then I fill in "request_value" with "299"
    Then I select "New York" from "request_source_addr_id"
    Then I select "Seattle" from "request_dest_addr_id"
    Then I select "2020" from "request_expected_delivery_start_1i"
    Then I select "January" from "request_expected_delivery_start_2i"
    Then I select "1" from "request_expected_delivery_start_3i"
    Then I select "2020" from "request_expected_delivery_end_1i"
    Then I select "December" from "request_expected_delivery_end_2i"
    Then I select "31" from "request_expected_delivery_end_3i"
    
    Then I press "Post Request"
    Then I should see "New request successfully posted"
    Then I should see "Nintendo Switch"
    Then I should see "New York"
    Then I should see "Seattle"
    Then I should see "January 01, 2020"
    Then I should see "December 31, 2020"



  
