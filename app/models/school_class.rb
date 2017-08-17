class SchoolClass < ActiveRecord::Base
  def to_s
    self.title + " " + String(self.room_number)
  end
end