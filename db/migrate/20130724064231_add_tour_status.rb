class AddTourStatus < ActiveRecord::Migration
  def change
    add_column :tours, :status, :integer
  end
end
