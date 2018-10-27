class RenameSchoolClassesTable < ActiveRecord::Migration
  def change
    rename_table :school_class, :school_classes
  end
end