class CreateClassTable < ActiveRecord::Migration

  def up
    create_table :school_classes do |t|
      t.string :title
      t.integer :room_number
    end
  end

  def down
    drop_table :school_classes
  end

end