class Service < ApplicationRecord
  belongs_to :business
  has_many :bookings
  has_many :customers, through: :bookings
end
