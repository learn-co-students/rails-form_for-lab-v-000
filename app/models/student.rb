class Student < ActiveRecord::Base
  def to_s
    (self.first_name || "empty" ) + " " + (self.last_name || "empty")
  end
end