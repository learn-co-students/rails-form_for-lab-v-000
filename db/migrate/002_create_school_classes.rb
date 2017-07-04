class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |x|
      x.string :title
      x.integer :room_number
    end
  end
end
