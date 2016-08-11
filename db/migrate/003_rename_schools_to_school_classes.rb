class RenameSchoolsToSchoolClasses < ActiveRecord::Migration
  def change
    rename_table :schools, :school_classes
  end
end
