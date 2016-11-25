class BusinessesController < ApplicationController
  before_action :authenticate_business!, only: :edit

  def index
    @business = Business.all
  end

  def show
    @business = Business.find(params[:id])
    @booking = Booking.new
    @services = Service.all
  end

  def edit
    @business = Business.find(params[:id])
  end

  def update
    @business = Business.find(params[:id])
    if @business.update(business_params)
      redirect_to business_path(@business)
    else
      redirect_to edit_business_path(@business)
      flash[:alert] = "An error has occured."
    end
  end

  private

  def business_params
    params.require(:business).permit(:description)
  end
end


# @business = StorageSpace.near(params[:address], 50).where('space >= ?'
