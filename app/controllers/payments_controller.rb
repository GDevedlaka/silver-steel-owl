class PaymentsController < ApplicationController
  before_action :set_booking

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    @booking.update(status: 'paid')
    redirect_to root_path


  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_business_booking_payment_path(booking_id: @booking.id)
  end

  private

  def set_booking
    @booking = Booking.where(status: 'pending').find(params[:booking_id])
  end
end
