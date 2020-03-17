module UpdateRequestStatusHelper
  def status_details(status)
    case status
    when $requester_unpaid
      "Requester has not paid"
    when $carrier_pending
      "Requester paid, carrier pending"
      # // -----Hide from the public after this-----
    when $carrier_unpaid
      "Carrier picked, waiting for carrier to pay"
    when $order_generated
      "Order Generated"
    when $order_picked_up
      "Successfully pick up"
    when $order_arrived
      "Arrive at destination city"
    when $order_unrated
      # TODO: yc3702
      # TODO: how to stop update status for carrier, will affect update_request_status function for carrier
      # TODO: current stop status for carrier is order_arrived(will affect user_profiles/show)
      "Wating for review"
    when $order_finished
      "Finished"
    end
  end
end
