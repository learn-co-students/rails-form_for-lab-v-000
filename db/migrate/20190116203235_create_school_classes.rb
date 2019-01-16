class CreateSchoolClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :school_classes do |t|
      t.text :title
      t.integer :room_number
    end
  end
end
