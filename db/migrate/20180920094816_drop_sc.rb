class DropSc < ActiveRecord::Migration
  def change
    drop_table :school_classes
  end
end
