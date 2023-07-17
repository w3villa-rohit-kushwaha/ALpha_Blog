class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  has_many :posts
end
