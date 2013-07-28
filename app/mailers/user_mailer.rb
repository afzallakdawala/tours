class UserMailer < ActionMailer::Base
  default from: "afzalmlakdawala@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.registration.subject
  #
  def registration(email_id)
    @greeting = "Hiddd"

    #mail to: => "#{email_id}", subject: => "test"
  end
end
