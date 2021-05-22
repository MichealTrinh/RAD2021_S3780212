class Subscription < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  before_save { self.email = email.downcase }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX}, length: { maximum: 100 }, uniqueness: { case_sensitive: false }
end
