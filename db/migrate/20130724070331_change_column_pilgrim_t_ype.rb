class ChangeColumnPilgrimTYpe < ActiveRecord::Migration
  def change
    change_column :tours, :pilgrim_type, :integer, :null => false, :default => 0
  end
end
