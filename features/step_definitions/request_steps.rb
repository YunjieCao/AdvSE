Given /the following requestes exist/ do |requests_table|
  requests_table.hashes.each do |request|
    # each returned element will be a hash whose key is the table header.
    Request.create!(request)
  end
end
