class CreateTestTwos < ActiveRecord::Migration
  def change
    create_table :test_twos do |t|
      t.string :title
      t.integer :room_number

      t.timestamps null: false
    end
  end

end
