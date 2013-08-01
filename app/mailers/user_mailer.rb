class UserMailer < ActionMailer::Base
  default from: "afzal@affire.in"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.registration.subject
  #
  def registration
    @greeting = "Hi"

    mail to: "afzalmlakdawala@gmail.com"
  end
end
