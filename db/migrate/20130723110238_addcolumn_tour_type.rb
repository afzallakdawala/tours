class AddcolumnTourType < ActiveRecord::Migration
  def change
    add_column :tours, :type, :integer
  end
end
