class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def test_email(id)
    @email = Email.find(id)
    @url  = 'http://example.com/login'
    mail(to: @email.email, subject: 'Test email from RAD Assignment')
  end
end
