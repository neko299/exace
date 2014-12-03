class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.text :content
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
