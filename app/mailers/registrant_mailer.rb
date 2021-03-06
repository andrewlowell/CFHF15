class RegistrantMailer < ApplicationMailer
  default from: 'registration@chicagofamilyhistoryfair.com'
  def registration_email(registrant)
    @registrant = registrant
    mail(to: @registrant.email_address, subject: 'Thanks for registering for The Chicago Family History Fair!')
  end
  def registration_notification(registrant)
    @registrant = registrant
    mail(to: ["mynock101@gmail.com", "dean@genlighten.com"], subject: "CFHF-2015 New Registration")
  end
end
