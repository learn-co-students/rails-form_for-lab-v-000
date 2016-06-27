class CreateSchoolClasses < ActiveRecord::Migration

  def change
    create_table :school_classes do |x|
      x.string :title
      x.integer :room_number

      x.timestamps null: false
    end
  end
end