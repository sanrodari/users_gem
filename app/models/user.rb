class User < ActiveRecord::Base

  attr_accessor :username, :email
  has_secure_password

  validates :username, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  has_and_belongs_to_many :roles

end
