# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def subscribed_email
    user = User.first
    UserMailer.with(email: user.email).subscribed_email
    #CustomerMailer.account_activation
  end
end
