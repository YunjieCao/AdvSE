class Address < ActiveRecord::Base
    def show
        return "#{self.line1}, #{self.line2}, #{self.city}, #{self.state}, #{self.country}, #{self.postal_code}, #{self.phone_number}"
    end

    def select_option
        return [self.show, self.id]
    end
end
  