class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.confirmation.subject
  #
  def confirmation(booking)
    @booking = booking
    business = Business.find(@booking.business_id).name

    mail to: @booking.email, subject: "Your booking confirmation for #{business}"
  end
end
