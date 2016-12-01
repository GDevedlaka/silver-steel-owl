class AddBookingEndTime < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :booking_end_time, :datetime
  end
end
