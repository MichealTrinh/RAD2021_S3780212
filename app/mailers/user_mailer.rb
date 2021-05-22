class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def test_email
    @email = params[:email]
    @url  = 'http://example.com/login'
    mail(to: @email, subject: 'Test email from RAD Assignment')
  end
end
