class ExampleMailer < ApplicationMailer
  default from: "ryan@hellorecruit.com"

  def email(user)
    @user = user
  end
end
