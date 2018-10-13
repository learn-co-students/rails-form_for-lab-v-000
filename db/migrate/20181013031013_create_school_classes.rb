class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.string :name
      t.integer :room_number
      t.timestamps null: false
    end
  end
end
