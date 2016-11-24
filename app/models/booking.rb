class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :service
  belongs_to :business
end
