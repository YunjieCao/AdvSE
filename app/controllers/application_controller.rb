class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  $status_num = 7
  $requester_unpaid = 0
  $carrier_pending = 1
  $carrier_unpaid = 2
  $order_generated = 3
  $order_picked_up = 4
  $order_arrived = 5
  $order_finished = 6
end
