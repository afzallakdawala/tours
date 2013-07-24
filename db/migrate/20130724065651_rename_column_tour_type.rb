class RenameColumnTourType < ActiveRecord::Migration
  def change
    rename_column :tours, :type, :pilgrim_type
  end
end
