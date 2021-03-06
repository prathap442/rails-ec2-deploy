class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.integer :price

      t.timestamps
    end
    add_index :products, :category_id
  end
end
