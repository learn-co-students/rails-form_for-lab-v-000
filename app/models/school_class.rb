class SchoolClass < ActiveRecord::Base
  def info
    [self.title,self.room_number].join(" /// ")
  end
end