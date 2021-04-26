class CreateProducts < ActiveRecord::Migration[6.1]
  
  def change
    drop_table :products if (table_exists? :products)
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :discount
      t.text :description
      t.integer :quantity_in_stock
      t.string :brand

      t.references :shopkeeper, foreign_key: true
      t.references :category, foreign_key: true
      
      t.timestamps
    end
  end
end
