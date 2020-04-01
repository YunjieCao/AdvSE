module ApplicationHelper
    
    def parse_date_select(params, key)
        # Ref: https://stackoverflow.com/questions/13605598/how-to-get-a-date-from-date-select-or-select-date-in-rails
        
        ret = nil
        if (%w(1 2 3).map { |e| params["#{key}(#{e}i)"].present? }).all?
            ret = Date.new *(%w(1 2 3).map { |e| params["#{key}(#{e}i)"].to_i })
        end

        return ret
    end
end
