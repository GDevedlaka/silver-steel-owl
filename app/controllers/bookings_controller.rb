class BookingsController < ApplicationController

def index
  @bookings = Booking.all

end

def show
  @booking = Booking.find(params[:id])
end

def create
  @booking = Booking.new(booking_params[:booking])
  @business = Business.find(params[:business_id])
  @booking.business = @business
  if @booking.save
    redirect_to dashboard_path
  else
    redirect_to business_path(@business)
    flash[:alert]
  end
end


private

def booking_params
  params.require(:booking).permit(:email, :name, :phone, :service_id)
end



end

# DateTime.parse(params[:date])

