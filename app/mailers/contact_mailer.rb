class ContactMailer < ActionMailer::Base
  default from: "contact-request@tacos.com"

  def contact_request(params)
    @params = params
    mail(to: 'admin@tacoz.com', subject: 'New Contact Request')
  end
end
