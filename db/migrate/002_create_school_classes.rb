class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.string :title
      t.string :room_number

      t.timestamps null: false
    end
  end
end
