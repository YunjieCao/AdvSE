Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    User_profile.create!(user)
  end
end

Given /^(?:|I )am logged in$/ do
  post "/login", {:session => { :email => "momohama@hotmail.com", :password => "123456", :user_profile_id => 1}}
end

