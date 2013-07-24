class ChangeAboutToText < ActiveRecord::Migration
  def change
    change_column :tours, :about, :text
  end
end
