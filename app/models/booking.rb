class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :business
  #after_create :send_confirmation_email

  before_validation :set_booking_end_time

  #  validate :check_no_overlaps

  # validates :booking_time, presence: true
  # validates :name, presence: true
  # validates :phone, presence: true

  scope :overlaps, lambda { |start, end_time|
    where("(booking_time, booking_end_time) OVERLAPS (?, ?)", start, end_time)
  }
  monetize :price_pennies

  def time
    "#{booking_time.strftime("%H:%M")} => #{booking_end_time.strftime("%H:%M")}"
  end

  scope :on, lambda { |date|
    where("DATE(booking_time) = ?", date.to_date)
  }


  private

  def set_booking_end_time
    self.booking_end_time = booking_time + service.duration.minutes
  end

  def send_confirmation_email
    BookingMailer.confirmation(self).deliver_now
  end

  def check_no_overlaps
    if Booking.overlaps(booking_time, booking_end_time).any?
      errors.add(:booking_time, "is not available") and return false
    end
  end
end
