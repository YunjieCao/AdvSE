Given /the following applications exist/ do |applications_table|
  applications_table.hashes.each do |application|
    # each returned element will be a hash whose key is the table header.
    TaskApplication.create!(application)
  end
end
