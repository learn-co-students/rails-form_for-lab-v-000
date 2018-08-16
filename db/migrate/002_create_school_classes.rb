
class CreateSchoolClasses < ActiveRecord::Migration
  
  def change
    create_table :school_classes do |column|
      column.string :title
      column.integer :room_number

      column.timestamps null: false
    end
  end
  
end