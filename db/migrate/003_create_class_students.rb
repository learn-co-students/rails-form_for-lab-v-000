class CreateClassStudents < ActiveRecord::Migration
    def change 
        create_table :class_students do |t|
            t.integer :class_id
            t.integer :student_id 
        end 
    end 
end 