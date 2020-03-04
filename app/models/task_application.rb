class TaskApplication < ActiveRecord::Base

  def self.get_application(order_id)
    TaskApplication.joins('INNER JOIN requests ON task_applications.order_id=
                requests.id').joins('INNER JOIN user_profiles ON task_applications.user_id=user_profiles.id').where(
        'task_applications.order_id=?', order_id).select('user_profiles.name, user_profiles.occupation, user_profiles.id')
  end

  def confirm_order
    current_request = Request.find_by(self.order_id)
    current_request.carrier_id = self.user_id
    current_request.status = 1
    if current_request.save
      self.destroy
    end
  end
end

