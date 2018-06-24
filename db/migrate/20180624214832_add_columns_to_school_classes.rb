class AddColumnsToSchoolClasses < ActiveRecord::Migration
  def change
    add_column :school_classes, :title, :text
    add_column :school_classes, :room_number, :integer
  end
end
