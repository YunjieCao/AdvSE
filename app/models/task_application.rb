class TaskApplication < ActiveRecord::Base

  def self.get_application(order_id)
    TaskApplication.joins('INNER JOIN requests ON task_applications.order_id=
                requests.id').joins('INNER JOIN user_profiles ON task_applications.user_id=user_profiles.id').where(
        'task_applications.order_id=?', order_id).select('task_applications.id as id, user_profiles.name as name, user_profiles.occupation as occupation, user_profiles.id as carrier_id')
  end

  def pick_carrier
    current_request = Request.find(self.order_id)
    current_request.carrier_id = self.user_id
    current_request.status = $carrier_unpaid
    if current_request.save
      self.destroy
    end
  end
end

