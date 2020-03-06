
Given /the following addresses exist/ do |addresses_table|
  addresses_table.hashes.each do |address|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Address.create!(address)

  end
end
