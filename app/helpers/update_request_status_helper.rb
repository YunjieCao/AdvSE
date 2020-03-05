module UpdateRequestStatusHelper
  def status_details(status)
    case status
      when 0
        "Still Pending"
      when 1
        "Waiting carrier confirmation"
      when 2
        "Order Generated"
      when 3
        "Successfully pick up"
      when 4
        "Arrive at destination city"
      when 5
        "Finished"
    end
  end
end
