class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |sc|
      sc.string :title
      sc.integer :room_number

      sc.timestamps null: false
    end
  end
end
