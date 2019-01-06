class CreateSchoolclass < ActiveRecord::Migration

  def change
    create_table :schoolclass do |t|
      t.string :title
      t.integer :room_number
    end
  end
end
