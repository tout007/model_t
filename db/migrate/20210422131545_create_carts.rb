class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.references :product, foreign_key: true
      t.integer :quantity
      t.references :user, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
