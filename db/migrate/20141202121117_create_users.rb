class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :prof
      t.string :image
      t.string :email
      t.string :remember_token
      t.string :address

      t.timestamps
    end
  end
end
