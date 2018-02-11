class SchoolClass < ActiveRecord::Base
  def to_s
    self.title + " " + self.room_number.to_s
  end
end
