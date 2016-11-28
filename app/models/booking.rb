class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :business
  after_create :send_confirmation_email

  private

  def send_confirmation_email
    BookingMailer.confirmation(self).deliver_now
  end

end
