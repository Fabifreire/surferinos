class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :starting_date
      t.datetime :ending_date
      t.references :user, null: false, foreign_key: true
      t.references :surfboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
