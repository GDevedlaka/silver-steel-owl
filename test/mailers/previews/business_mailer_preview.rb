class BusinessMailerPreview < ActionMailer::Preview
  def welcome
    business = Business.find(8)
    BusinessMailer.welcome(business).deliver_now
  end
end
