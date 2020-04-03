Given /the following verifications exist/ do |verification_table|
    verification_table.hashes.each do |record|
      # each returned element will be a hash whose key is the table header.
      UserVerification.create!(record)
    end
  end
  
  