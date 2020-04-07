class User < ActiveRecord::Base
  has_secure_password
  validates :username, :password_digest, presence: true
  has_many :books
end