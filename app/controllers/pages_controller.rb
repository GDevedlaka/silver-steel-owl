class PagesController < ApplicationController
  def home
    redirect_to business_url(current_business) if current_business
  end
end
