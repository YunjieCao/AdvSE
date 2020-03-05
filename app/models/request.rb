class Request < ActiveRecord::Base
  def self.get_status(order_id)
    order = Request.find_by(id: order_id)
    return order.status
  end

  def self.map_status(status)
    case status
    when 0
      "Pending"
    when 1
      "Waiting carrier confirmation"
    when 2
      "Generated"
    when 3
      "Picked up by carrier"
    when 4
      "Arrive at desitination city"
    when 5
      "Finished"
    end
  end

  def self.update_status(order_id, status)
    order = Request.find_by(id:order_id)
    order.status = status
    order.save
  end

  def self.status_num
    return 6
  end

end
