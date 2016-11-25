class Service < ApplicationRecord
  belongs_to :business
  has_many :bookings, dependent: :destroy
end
