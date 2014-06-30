class User < ActiveRecord::Base
  attr_accessible :login, :password, :password_digest, :password_confirmation

  has_secure_password

  validates :login, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
end
