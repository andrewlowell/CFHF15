class RegistrantMailer < ApplicationMailer
  default from: 'registration@wilmettefamilyhistoryfair.com'
  def registration_email(registrant)
    @registrant = registrant
    mail(to: @registrant.email_address, subject: 'Thanks for registering for The Wilmette Family History Fair!')
  end
end
