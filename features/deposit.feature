Feature: Make a deposit

As a requester
So that I can choose a carrier
I want to pay the deposit

Background: some requests exist
    Given the following user_profiles exist:
    |id | name | email                |  password_digest                                             | created_at          | updated_at          |
    |1  | momo | momohama@hotmail.com | $2a$10$r6Xx4SFhZwqbWpo.FBrWOuyS/rcELToulfAnOnKD76HRmjjdADFsq | 2020-03-03 17:15:10 | 2020-03-05 22:36:55 |
    |2  |yunjie|YunjieCao@hotmail.com |$2a$10$Vge8AxfIvE4wRcafM7HCgeqR9YJ./Buvp2wzZomxDXK2F/x4jX5gO  | 2020-03-04 17:15:10 | 2020-03-04 17:15:10 |
    |3  |yunjiecao|yc3702@columbia.edu |$2a$10$Vge8AxfIvE4wRcafM7HCgeqR9YJ./Buvp2wzZomxDXK2F/x4jX5gO  | 2020-03-04 17:15:10 | 2020-03-04 17:15:10 |

    Given the following requestes exist:
        | id  | title               |requester_id |      status    | source_addr_id | dest_addr_id| expected_delivery_start | expected_delivery_end|
        | 1   | first request       |1            |         0      |          1     |      2      |2020-03-06 00:00:00      |2020-03-06 00:00:00    |

    Given the following applications exist:
        |  id  |  order_id   | user_id   |
        |  1   |    1        |  3        |

Scenario: Requester pays for the deposit
    Given I am on the user_profiles page
    Then I press "Pay with Card"
    Then I should see "Pay for this order"
