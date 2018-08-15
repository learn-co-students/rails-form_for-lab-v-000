
class CreateSchoolClasses < ActiveRecord::Migration
  
  def change
    create_table :schoolclasses do |column|
      column.string :title
      column.integer :room_number

      column.timestamps null: false
    end
  end
  
end