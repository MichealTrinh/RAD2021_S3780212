class Subscription < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  before_save { self.email = email.downcase }
  after_create :emailSubscribed
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX}, length: { maximum: 100 }, uniqueness: { case_sensitive: false }

  def emailSubscribed
    @email = Subscription.last.email
    UserMailer.with(email: @email).subscribed_email.deliver_now
  end
end
