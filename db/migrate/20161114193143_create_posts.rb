class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :measurement
      t.string :artist
      t.string :image
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
