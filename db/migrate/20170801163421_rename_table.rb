class RenameTable < ActiveRecord::Migration
  def change
    rename_table :classes, :school_classes
  end
end
