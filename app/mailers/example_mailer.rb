class ExampleMailer < ApplicationMailer
  default from: "ryan@hellorecruit.com"

  def email(user)
    @user = user[0]
    mail(to: @user.email, subject: 'New Job Posted!')
  end
end
