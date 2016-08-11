class SchoolClass < ActiveRecord::Base
  def to_s
    self.name + " - room: " + self.room_number
  end
end
