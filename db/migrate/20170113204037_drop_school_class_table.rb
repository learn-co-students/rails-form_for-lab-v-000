class DropSchoolClassTable < ActiveRecord::Migration
  def up
    drop_table :school_class
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
