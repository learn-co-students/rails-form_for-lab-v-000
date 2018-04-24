class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :schoolclasses do |t|
      t.string :title
      t.integer :room_number

      t.timestamps null: false
    end
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> e3d82bf5e5fa798150b283a1115ba82c94709b36
