class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :rate
      t.references :ratingable, polymorphic: true
      
      # t.references :product, foreign_key: true
      # t.references :shopkeeper, foreign_key: true

      t.timestamps
    end
  end
end
