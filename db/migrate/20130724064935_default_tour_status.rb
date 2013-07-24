class DefaultTourStatus < ActiveRecord::Migration
  def change
    change_column :tours, :status, :integer, :null => false, :default => 0
  end
end
