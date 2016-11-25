class RemoveCustomersTable < ActiveRecord::Migration[5.0]
  def change
    remove_reference :bookings, :customer, index: true
    drop_table :customers
  end
end
