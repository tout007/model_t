class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :rate
      t.references :ratingable, polymorphic: true

      t.timestamps
    end
  end
end
