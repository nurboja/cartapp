class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :picture_url
      t.string :category
      t.string :subcategory

      t.timestamps null: false
    end
  end
end
