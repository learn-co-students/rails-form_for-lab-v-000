class CreateSchoolClass < ActiveRecord::Migration
  def change
    create_table :school_class do |t|
      t.string :title
      t.integer :integer

      t.timestamps null: false
    end
  end
end
