class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  $status_num = 8
  $review_rating_num = 5
  
  $requester_unpaid = 0
  $carrier_pending = 1
  $carrier_unpaid = 2
  $order_generated = 3
  $order_picked_up = 4
  $order_arrived = 5
  $order_unrated = 6
  $order_finished = 7

  $review_very_bad = 1
  $review_bad = 2
  $review_medium = 3
  $review_good = 4
  $review_very_good = 5
end
