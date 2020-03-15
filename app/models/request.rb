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
    return $status_num
  end

  def self.get_requester_request(requester_id)
    Request.where(requester_id: requester_id).order(:status)
  end

  def self.get_carrier_request(carrier_id)
    Request.where(carrier_id: carrier_id).order(:status)
  end

  def get_source_address
    Address.find(self.source_addr_id)
  end

  def get_dest_address
    Address.find(self.dest_addr_id)
  end

end
