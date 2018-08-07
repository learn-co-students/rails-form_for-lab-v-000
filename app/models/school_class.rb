class SchoolClass < ActiveRecord::Base 
    has_many :students, through: :classstudents
end 