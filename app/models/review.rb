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

  def self.get_reviews_for_this_carrier(carrier_id)
    Request.where(status: $order_finished, carrier_id: carrier_id).joins('INNER JOIN reviews ON requests.id=reviews.order_id').select(
        'reviews.ratings as ratings, reviews.comments as comments')

  end
end
