Address.create!([
  {line1: "160", line2: "west", city: "new york", state: "NY", country: "US", postal_code: "10025", phone_number: "7038700467", user_id: 1},
  {line1: "915 West", line2: "Apt.901", city: "new york", state: "NY", country: "USA", postal_code: "10025", phone_number: "6463873259", user_id: 1}
])
Request.create!([
  {title: "buy some wine", description: "some wine", img_url: nil, requester_id: 1, carrier_id: nil, status: 0, source_addr_id: 1, dest_addr_id: 1, create_timestamp: nil, expected_delivery_start: "2020-03-06 00:00:00", expected_delivery_end: "2020-03-06 00:00:00", value: "12.0"}
])
User_profile.create!([
  {name: "test", email: "test@test.com", occupation: nil, verified: nil, password_digest: "$2a$10$LAlnwzYU4mH11ykyLAJ/3uAvxvKXSAYFCmeAJ1vIAq4HQswqDX2ea"},
  {name: "yunjiecao", email: "yunjiecao@hotmail.com", occupation: nil, verified: nil, password_digest: "$2a$10$Vge8AxfIvE4wRcafM7HCgeqR9YJ./Buvp2wzZomxDXK2F/x4jX5gO"}
])
