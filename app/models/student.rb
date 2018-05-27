class Student < ActiveRecord::Base

  has_many :school_class_students
  has_many :school_classes, through: :school_class_students

  def to_s
    self.first_name + " " + self.last_name
  end
end
