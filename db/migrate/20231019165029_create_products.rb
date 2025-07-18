class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 7, scale: 2

      t.timestamps
    end
  end
end
