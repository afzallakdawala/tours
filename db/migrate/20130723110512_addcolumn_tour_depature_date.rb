class AddcolumnTourDepatureDate < ActiveRecord::Migration
  def change
    add_column :tours, :depature_date, :date
  end
end
