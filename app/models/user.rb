class User < ApplicationRecord
  has_many :carts, :dependent => :destroy
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  VALID_PASSWORD_REGEX = /\A[a-zA-Z0-9]*\z/
  before_save { self.email = email.downcase }
  validates :username, presence: true, length: { maximum: 25 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX}, length: { maximum: 100 }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8, maximum: 20 }, allow_nil: true, format: { with: VALID_PASSWORD_REGEX}, confirmation: true


  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end
end
