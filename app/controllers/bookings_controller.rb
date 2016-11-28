class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    respond_to :html, :json
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @business = Business.find(params[:business_id])
    parsed_booking_time = DateTime.strptime(params[:booking][:booking_time], '%m/%d/%Y %H:%M %p')
    @booking.booking_time = parsed_booking_time
    @booking.business = @business
    if @booking.save
      redirect_to business_path(@business)
      flash[:notice] = "Your booking has been made. You will receive confirmation by email shortly."
    else
      redirect_to business_path(@business)
      flash[:alert] = "An error has occurred. Please try again."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:email, :name, :phone, :service_id, :booking_time)
  end
end

# DateTime.parse(params[:date])

