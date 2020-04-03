Given /the following reviews exist/ do |reviews_table|
  reviews_table.hashes.each do |review|
    # each returned element will be a hash whose key is the table header.
    Review.create!(review)
  end
end

