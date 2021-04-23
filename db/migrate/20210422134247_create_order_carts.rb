class CreateOrderCarts < ActiveRecord::Migration[6.1]
  def change
    
    create_table :order_carts do |t|
      t.references :order, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
