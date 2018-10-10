class SchoolClass < ActiveRecord::Base

    def to_info 
        self.title + " " + self.room_number.to_s
    end
end
