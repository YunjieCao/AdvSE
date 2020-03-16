class Review < ActiveRecord::Base
  def self.insert_review(request_id, score, comment)
    review = Review.new()
    review.order_id = request_id
    review.ratings = score
    review.comments = comment
    if review.save
      "Successfully rate this carrier"
    else
      ""
    end
  end
end
