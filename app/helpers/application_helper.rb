module ApplicationHelper
  def business_url(business)
    root_url(subdomain: business.url)
  end
end
