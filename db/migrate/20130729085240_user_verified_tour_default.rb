class UserVerifiedTourDefault < ActiveRecord::Migration
  def change
    change_column :users, :verified_tour, :integer, :null => false, :default => 0
  end
end
