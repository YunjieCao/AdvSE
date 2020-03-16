module ReviewHelper
  def get_rating_helper(rating)
    case rating
    when $review_very_bad
      "Very bad"
    when $review_bad
      "Bad"
    when $review_medium
      "Medium"
    when $review_good
      "Good"
    when $review_very_good
      "Very good"
    end
  end
end