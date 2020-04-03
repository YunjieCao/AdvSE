Feature: Order requests in user center

  As a requester
  So that I can manage my requests more easily
  I want to kind of group requests with different status together

  Background: requster have some requests
    Given the following user_profiles exist:
      |id | name | email                |  password_digest                                             | created_at          | updated_at          |
      |1  | momo | momohama@hotmail.com | $2a$10$r6Xx4SFhZwqbWpo.FBrWOuyS/rcELToulfAnOnKD76HRmjjdADFsq | 2020-03-03 17:15:10 | 2020-03-05 22:36:55 |
      |2  |yunjie|YunjieCao@hotmail.com |$2a$10$Vge8AxfIvE4wRcafM7HCgeqR9YJ./Buvp2wzZomxDXK2F/x4jX5gO  | 2020-03-04 17:15:10 | 2020-03-04 17:15:10 |

    Given the following addresses exist:
      |id | line1| line2| city | state | country | postal_code| phone_number | user_id |
      |1  |	915 West End Avenue|	Apt. 901 |	New York |	NY |	United States|	10025|	6463873259|	1|
      |2  |	2270 Broadway|	Floor1|	New York |	NY|	United States|	 10025|	6463873259	|1 |



    Given the following requestes exist:
      | id  | title           |requester_id |source_addr_id | dest_addr_id| expected_delivery_start | expected_delivery_end | status |
      | 1   | 1 request       |1          | 1              |      2      |2020-03-06 00:00:00      |2020-03-06 00:00:00    | 0     |
      | 2   | 2 request       |1          | 1              |      2      |2020-03-06 00:00:00      |2020-03-06 00:00:00    | 1     |


  Scenario: Reorder requests according to status
    Given I am on the login page
    Then I fill in "session_email" with "momohama@hotmail.com"
    Then I fill in "session_password" with "123456"
    When I press "Log in"
    Then I should see "User Center"
    Then I should notice "1 request" before "2 request"



