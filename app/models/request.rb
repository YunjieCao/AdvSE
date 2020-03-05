class Request < ActiveRecord::Base
  def self.get_status(order_id)
    order = Request.find_by(id: order_id)
    return order.status
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
