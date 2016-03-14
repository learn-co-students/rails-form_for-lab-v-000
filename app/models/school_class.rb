class SchoolClass < ActiveRecord::Base
  def to_s
    self.title + " " + self.room_number
  end
end