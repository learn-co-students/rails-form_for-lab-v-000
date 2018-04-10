class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end

    create_table :school_classes do |t|
      t.string :title
      t.integer :room_number
    end
  end
end
