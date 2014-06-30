class User < ActiveRecord::Base
  attr_accessible :login, :password, :password_confirmation

  has_secure_password

  validates :login, presence: true
  validates :password_digest, presence: true
end
