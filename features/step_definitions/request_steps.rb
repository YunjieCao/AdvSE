Given /the following requestes exist/ do |requests_table|
  requests_table.hashes.each do |request|
    # each returned element will be a hash whose key is the table header.
    Request.create!(request)
  end
end

Then /I should notice "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  content = page.body
  ind1 = content.index(e1)
  ind2 = content.index(e2)
  expect(ind1).to be < ind2

end