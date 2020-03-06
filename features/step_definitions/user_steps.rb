Given /the following user_profiles exist/ do |users_table|
  users_table.hashes.each do |user|
    # each returned element will be a hash whose key is the table header.
    User_profile.create!(user)
  end
end

