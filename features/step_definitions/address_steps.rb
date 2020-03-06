Given /the following addresses exist/ do |addresses_table|
  addresses_table.hashes.each do |address|
    # each returned element will be a hash whose key is the table header.
    Address.create!(address)
  end
end
