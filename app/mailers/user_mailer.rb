class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def subscribed_email
    @email = params[:email]
    mail to: @email, subject: 'Subscription for Emails'
  end
end
