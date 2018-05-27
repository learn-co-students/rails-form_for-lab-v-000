class CreateSchoolClassStudents < ActiveRecord::Migration
  def change
    create_table :school_class_students do |scs|
      scs.integer :student_id
      scs.integer :school_class_id

      scs.timestamps null: false
    end
  end
end
