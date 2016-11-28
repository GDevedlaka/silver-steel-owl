class ServicesController < ApplicationController

  def create
    @service= Service.new(service_params)
    @business = Business.find(params[:business_id])
    @service.business = @business
    if @service.save
    else
      redirect_to business_path(@business)
      flash[:alert] = "An error occurred."
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
  end

  private

  def service_params
    params.require(:service).permit(:name, :price, :duration)
  end
end
