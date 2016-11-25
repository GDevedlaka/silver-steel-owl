class ServicesController < ApplicationController

  def create
    @service= Service.new(service_params)
    @business = Business.find(params[:business_id])
    @service.business = @business
    if @service.save
      redirect_to root_path
      flash[:notice] = "Service added."
    else
      redirect_to business_path(@business)
      flash[:alert] = "An error occurred."
    end
  end

  private

  def service_params
    params.require(:service).permit(:name, :price, :duration)
  end
end
