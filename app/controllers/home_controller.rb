class HomeController < ApplicationController
  def index
    ExampleMailer.email(User.where(admin: true)).deliver
  end
end
