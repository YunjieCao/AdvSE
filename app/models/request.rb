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
      "Generated"
    when 2
      "Picked up by carrier"
    when 3
      "Arrive at desitination city"
    when 4
      "Finished"
    end
  end

  def self.update_status(order_id, status)
    order = Request.find_by(id:order_id)
    order.status = status
    order.save
  end
end
