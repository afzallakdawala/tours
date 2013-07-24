class AddcolumnTourDays < ActiveRecord::Migration
  def change
    add_column :tours, :days, :integer
  end
end
