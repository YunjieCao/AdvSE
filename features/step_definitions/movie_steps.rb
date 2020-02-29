# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    #puts movie
    Movie.create!(movie)
  end
  #fail "Unimplemented"
end

Then /(.*) seed movies should exist/ do | n_seeds |
  Movie.count.should be n_seeds.to_i
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should notice "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  content = page.body
  ind1 = content.index(e1)
  ind2 = content.index(e2)
  expect(ind1).to be < ind2
  
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  ratings = rating_list.split(',')
  ratings.each do |rating|
    if uncheck == "un"
      id = "ratings_#{rating}"
      id = id.gsub(/\s+/, "")
      uncheck(id)
    else
      id = "ratings_#{rating}"
      id = id.gsub(/\s+/, "")
      check(id)
    end
  end
  puts rating_list
  
end

When /^(?:|I )press (.*)/ do |button|
  click_button(button)
end

Then /^(?:|I )should see (.*)/ do |ratings|
  # query titles with such ratings from database and then check
  ratings = ratings.split(',')
  @movies = Movie.where(rating: ratings)
  @movies.each do |movie|
	c = "hello world"
	t = "world"
	expect c.include?t
	if page.respond_to? :should
	  page.should have_content(movie.title)
	else
	  assert page.have_content(movie.title)
	end
  end
end


Then /^(?:|I )should not see (.*)/ do |ratings|
  
  ratings = ratings.split(',')
  @movies = Movie.where(rating: ratings)
  @movies.each do |movie|
	if page.respond_to? :should
	  page.should have_no_content(movie.title)
	else
	  assert page.have_no_content(movie.title)
	end
  end
end

When /^(?:|I )check all ratings/ do
	ratings = Movie.select(:rating).distinct.map(&:rating)
	ratings.each do |rating|
	    
	    id = "ratings_#{rating}"
	    id = id.gsub(/\s+/, "")
	    check(id)
	    
	end
	click_button("ratings_submit")
end

Then /I must see all the movies/ do
  # Make sure that all the movies in the app are visible in the table
	#puts page.body
	#puts page.body.scan("<tr>").length
	table_rows = page.body.scan("<tr>").length - 1
	film_num = Movie.count
	expect(table_rows).to eq film_num

end
