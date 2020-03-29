class Address < ActiveRecord::Base
    validates :line1, presence: true, length: {maximum: 45}
    validates :city, presence: true, length: {maximum: 45}
    validates :state, presence: true, length: {maximum: 45}
    validates :country, presence: true, length: {maximum: 45}
    validates :postal_code, presence: true, length: {maximum: 45}
    validates :phone_number, presence: true, length: {maximum: 45}

    def show
        return "#{self.line1}, #{self.line2}, #{self.city}, #{self.state}, #{self.country}, #{self.postal_code}, #{self.phone_number}"
    end

    def select_option
        return [self.show, self.id]
    end
end
  