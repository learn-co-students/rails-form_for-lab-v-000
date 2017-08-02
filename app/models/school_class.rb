class SchoolClass < ActiveRecord::Base
  def to_s
    self.title + " -  Room " + self.room_number.to_s
  end
end
