class UserMailer < ApplicationMailer
  default from: "isavek@hotmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'isavek@hotmail.com',
         subject: "A new contact form message from #{name}")
  end
end
