class AddPriceToService < ActiveRecord::Migration[5.0]
  def change
    add_monetize :bookings, :price, currency: { present: false }

  end
end
