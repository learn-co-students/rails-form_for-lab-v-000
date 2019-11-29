class CreateSchoolClass < ActiveRecord::Migration[5.0]
  def change
    create_table :School_classes do |t|
      t.string :title 
      t.integer :room_number 

      t.timestamps null: false
    end
  end
end