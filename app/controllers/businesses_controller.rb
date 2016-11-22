class BusinessesController < ApplicationController
  def index
    @business = Business.all
  end

end


# @business = StorageSpace.near(params[:location], 50).where('space >= ?'
