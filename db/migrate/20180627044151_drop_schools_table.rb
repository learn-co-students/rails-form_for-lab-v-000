class DropSchoolsTable < ActiveRecord::Migration
  def change
    drop_table :schools
  end
end
