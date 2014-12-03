class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :image
      t.string :name
      t.string :imagetype
      t.string :image_2
      t.text :prof
      t.string :image_3
      t.text :desk
      t.string :image_4
      t.string :image_5
      t.string :price
      t.integer :category_id

      t.timestamps
    end
  end
end
