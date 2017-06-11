class CreateSchoolClasses2 < ActiveRecord::Migration
  def change
    drop_table :school_classes
    create_table :school_classes do |t|
      t.string :title
      t.integer :room_number
    end
  end
end
