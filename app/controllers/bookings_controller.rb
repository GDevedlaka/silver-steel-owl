class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @services = @bookings.map {|b| b.service.name }.uniq
    @colors = %w(red blue #FFFFE5 green purple brown orange black)

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
    @booking.price = @booking.service.price
    @booking.status = 'pending'
    if @booking.save
      respond_to do |format|
        format.html {
          redirect_to root_path
          flash[:notice] = "Your booking has been made. You will receive confirmation by email shortly."
        }
        format.js
      end
    else
      respond_to do |format|
        format.html {
          redirect_to business_path(@business)
          flash[:alert] = "An error has occurred. Please try again."
        }
        format.js
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:email, :name, :phone, :service_id, :booking_time)
  end
end

# DateTime.parse(params[:date])

