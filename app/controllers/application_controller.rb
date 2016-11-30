class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:address, :name, :url])
  end

  def business_url(business)
    root_url(subdomain: business.url)
  end

  helper_method :business_url
end
