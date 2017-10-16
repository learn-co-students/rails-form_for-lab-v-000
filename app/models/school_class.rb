class SchoolClass < ActiveRecord::Base

  def info
    self.title + " at room №" + self.room_number.to_s
  end
end
