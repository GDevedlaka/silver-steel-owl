class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :booking_time
      t.integer :price
      t.string :status
      t.references :customer, foreign_key: true
      t.references :service, foreign_key: true
      t.timestamps
    end
  end
end
