User_profile.create!([
  {name: "user1", email: "user1@sterna.com", occupation: nil, verified: 0, password_digest: "$2a$10$c26FdGhB5h2qLNZM1HFWtONgDqZXVudSvLq2H.EnuBb5s/Hbwdl0m"},
  {name: "user2", email: "user2@sterna.com", occupation: nil, verified: 0, password_digest: "$2a$10$c26FdGhB5h2qLNZM1HFWtONgDqZXVudSvLq2H.EnuBb5s/Hbwdl0m"},
  {name: "user3", email: "user3@sterna.com", occupation: nil, verified: 0, password_digest: "$2a$10$c26FdGhB5h2qLNZM1HFWtONgDqZXVudSvLq2H.EnuBb5s/Hbwdl0m"},
  {name: "user4", email: "user4@sterna.com", occupation: nil, verified: 0, password_digest: "$2a$10$c26FdGhB5h2qLNZM1HFWtONgDqZXVudSvLq2H.EnuBb5s/Hbwdl0m"},
  {name: "user5", email: "user5@sterna.com", occupation: nil, verified: 0, password_digest: "$2a$10$c26FdGhB5h2qLNZM1HFWtONgDqZXVudSvLq2H.EnuBb5s/Hbwdl0m"}
])
Address.create!([
  {line1: "1001 Some street", line2: "Apt 101", city: "New York", state: "NY", country: "United States", postal_code: "10001", phone_number: "123456001", user_id: 2, status: 1},
  {line1: "1002 Some street", line2: "Apt 102", city: "Portland", state: "OR", country: "United States", postal_code: "10002", phone_number: "123456002", user_id: 2, status: 1},
  {line1: "1003 Some street", line2: "Apt 103", city: "Beijing", state: "Beijing", country: "China", postal_code: "110100", phone_number: "12345678003", user_id: 2, status: 1},
  {line1: "1004 Some street", line2: "Apt 104", city: "Seattle", state: "WA", country: "United States", postal_code: "10004", phone_number: "123456004", user_id: 3, status: 1},
  {line1: "1005 Some street", line2: "Apt 105", city: "Shenzhen", state: "Guangdong", country: "China", postal_code: "510810", phone_number: "12345678005", user_id: 3, status: 1},
  {line1: "1006 Some street", line2: "Apt 106", city: "Chicago", state: "IL", country: "United States", postal_code: "10006", phone_number: "123456006", user_id: 3, status: 1}
])
Request.create!([
  {title: "Nintendo Switch", description: "I want a Nintendo Switch limited version.", img_url: "switch.jpeg", requester_id: 2, carrier_id: nil, status: 0, source_addr_id: 1, dest_addr_id: 3, expected_delivery_start: "2020-04-01 00:00:00", expected_delivery_end: "2020-05-01 00:00:00", value: "299.0"},
  {title: "N95 respirator", description: "I need respirators. N95 preferred.", img_url: "mask.jpeg", requester_id: 3, carrier_id: nil, status: 0, source_addr_id: 5, dest_addr_id: 4, expected_delivery_start: "2020-03-15 00:00:00", expected_delivery_end: "2020-05-15 00:00:00", value: "100.0"}
])
