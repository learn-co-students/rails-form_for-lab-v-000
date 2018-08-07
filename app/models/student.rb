class Student < ActiveRecord::Base
  has_many :classes, through: :schoolclass

  def to_s
    self.first_name + " " + self.last_name
  end
end