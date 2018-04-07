class CreateSchools< ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :title
      t.integer :room_number
      t.timestamps null: false
    end
  end
end
