module UpdateRequestStatusHelper
  def status_details(status)
    case status
      when 0
      "Still Pending"
      when 1
      "Order Generated"
      when 2
      "Successfully pick up"
      when 3
      "Arrive at destination city"
      when 4
      "Finished"
    end
  end
end
