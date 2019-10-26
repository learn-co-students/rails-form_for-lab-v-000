class Student < ActiveRecord::Base

    def to_s
        self.first_name.to_s + " " + self.first_name.to_s
    end

end
