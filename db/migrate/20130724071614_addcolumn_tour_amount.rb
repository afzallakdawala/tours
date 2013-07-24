class AddcolumnTourAmount < ActiveRecord::Migration
  def change
    add_column :tours, :amount, :integer, :null => false, :default => 0
  end
end
