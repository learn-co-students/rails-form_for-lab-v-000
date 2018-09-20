class ChangeRoomnoType < ActiveRecord::Migration
  def change
    change_column :school_classes, :room_number, :integer
  end
end
