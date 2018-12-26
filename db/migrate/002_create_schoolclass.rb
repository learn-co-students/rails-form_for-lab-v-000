class SchoolClass < ActiveRecord::Migration
    def change
      create_table :schoolclass do |t|
        t.string :title
        t.integer :room_number
  
        t.timestamps null: false
      end
    end
  end