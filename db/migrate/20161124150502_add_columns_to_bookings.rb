class AddColumnsToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :email, :string
    add_column :bookings, :name, :string
    add_column :bookings, :phone, :string
  end
end
