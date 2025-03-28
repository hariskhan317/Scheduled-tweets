class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "should be email" }
  validates :password, presence: true, length: { minimum: 5, message: "Password should be greater than 5 characters" }
end
