class BusinessMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.business_mailer.welcome.subject


  def welcome(business)
    @business = business  # Instance variable => available in view

    mail to: @business.email, subject: 'Welcome to Djinn'
    # This will render a view in `app/views/business_mailer`!
  end
end
