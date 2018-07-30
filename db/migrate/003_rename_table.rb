class RenameTable < ActiveRecord::Migration
  def change
    rename_table :schoolclass, :school_classes
  end

end
