Feature: Filter requests in the marketplace page

As a carrier
So that I can help others and make some money
I want to apply to help a user complete his request

Background: some requests exist
    Given the following user_profiles exist:
    |id | name  | email               |  password_digest                                             | created_at          | updated_at          |
    |1  | user1 | user1@sterna.com    | $2a$10$Vge8AxfIvE4wRcafM7HCgeqR9YJ./Buvp2wzZomxDXK2F/x4jX5gO | 2020-03-03 17:15:10 | 2020-03-05 22:36:55 |

    Given the following addresses exist:
    |id | line1| line2| city | state | country | postal_code| phone_number | user_id |
    |1  |	915 West End Avenue|	Apt. 901 |	New York |	NY |	United States|	10025|	6463873259|	1|
    |2  |	2270 Broadway|	Floor1|	New York |	NY|	United States|	 10025|	6463873259	|1 |

    Given the following requestes exist:
    | id  | title          |requester_id |      status    | source_addr_id | dest_addr_id | expected_delivery_start | expected_delivery_end |
    | 1   | Req_2019       |1            |         0      |          1     |      2       | 2019-04-01 00:00:00     | 2019-06-01 00:00:00   |
    | 2   | Req_2020_long  |1            |         0      |          1     |      2       | 2020-04-01 00:00:00     | 2020-06-01 00:00:00   |
    | 3   | Req_2020_short |1            |         0      |          1     |      2       | 2020-05-15 00:00:00     | 2020-05-16 00:00:00   |

Scenario: User create new verification
    Given I am on the marketplace page    
    Then I should see "Filter"
    Then I should see "Earliest Expected Delivery Start Date"
    Then I should see "Latest Expected Delivery End Date"

    Then I should see "Req_2019"
    Then I should see "Req_2020_long"
    Then I should see "Req_2020_short"
    
    Then I select "2020" from "request_filter_expected_delivery_start_1i"
    Then I select "May" from "request_filter_expected_delivery_start_2i"
    Then I select "10" from "request_filter_expected_delivery_start_3i"

    Then I select "2020" from "request_filter_expected_delivery_end_1i"
    Then I select "May" from "request_filter_expected_delivery_end_2i"
    Then I select "20" from "request_filter_expected_delivery_end_3i"

    Then I press "Refresh"

    Then I should not see "Req_2019"
    Then I should see "Req_2020_long"
    Then I should not see "Req_2020_short"
