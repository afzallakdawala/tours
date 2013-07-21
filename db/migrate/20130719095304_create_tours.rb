class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.datetime :date
      t.integer :tour_id
      t.string :about
      t.integer :available

      t.timestamps
    end
  end
end
