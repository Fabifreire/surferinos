class CreateSurfboards < ActiveRecord::Migration[6.1]
  def change
    create_table :surfboards do |t|
      t.string :category
      t.integer :price
      t.string :brand
      t.integer :size
      t.integer :volume
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
