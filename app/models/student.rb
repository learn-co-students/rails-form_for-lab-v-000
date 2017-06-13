class Student < ActiveRecord::Base
  has_many :school_classes
  def to_s
    self.first_name + " " + self.last_name
  end
end