class Service < ApplicationRecord
  belongs_to :business
  has_many :bookings, dependent: :destroy
  has_many :customers, through: :bookings
end
