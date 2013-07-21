class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :country
      t.string :city
      t.string :tel
      t.string :mobile
      t.string :email_id
      t.string :password
      t.integer :verified_tour

      t.timestamps
    end
  end
end
