# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class ExampleMailerPreview < ActionMailer::Preview
  def email_preview
    ExampleMailer.email(User.where(admin: true)).deliver
  end
end
