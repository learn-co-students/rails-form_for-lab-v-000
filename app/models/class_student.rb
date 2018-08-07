class ClassStudent < ActiveRecord::Base
    belongs_to :class
    belongs_to :student
end 