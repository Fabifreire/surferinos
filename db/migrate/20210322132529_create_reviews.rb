class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.references :surfboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
