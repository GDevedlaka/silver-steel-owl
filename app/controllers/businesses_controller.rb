class BusinessesController < ApplicationController
  def index
    @business = Business.all

  end

  def show
    @business = Business.find(params[:id])
    @booking = Booking.new
  end

  def edit
  end
end


# @business = StorageSpace.near(params[:address], 50).where('space >= ?'
