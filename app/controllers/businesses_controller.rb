class BusinessesController < ApplicationController
  def index
    @business = Business.all
  end

  def show
    @business = Business.find(params[:id])
  end
end


# @business = StorageSpace.near(params[:location], 50).where('space >= ?'
