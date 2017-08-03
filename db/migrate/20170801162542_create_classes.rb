class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :title
      t.integer :room_number
    end
  end
end
