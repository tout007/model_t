class CreateCookings < ActiveRecord::Migration[6.1]
  def change
    create_table :cookings do |t|
      t.text :receipe
      t.string :title
      t.boolean :active

      t.timestamps
    end
  end
end
