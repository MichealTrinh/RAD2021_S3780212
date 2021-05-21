class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def test_email(id)
    @email = Subscription.find(id).email
    @url  = 'http://example.com/login'
    mail(to: @email, subject: 'Test email from RAD Assignment')
  end
end
