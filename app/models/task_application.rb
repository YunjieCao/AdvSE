class TaskApplication < ActiveRecord::Base

  def self.get_application(order_id)
    TaskApplication.joins('INNER JOIN requests ON task_applications.order_id=
                requests.id').joins('INNER JOIN user_profiles ON task_applications.user_id=user_profiles.id').where(
        'task_applications.order_id=?', order_id).select('user_profiles.name, user_profiles.occupation, user_profiles.id')
  end

  def self.confirm_order(order_id, picked_carrier_id)
    request_info = {:id=>order_id, :carrier_id=>picked_carrier_id}
    current_request = Request.find_by(id: order_id)
    current_request.carrier_id = picked_carrier_id
    current_request.status = 1
    current_request.save
  end
end

