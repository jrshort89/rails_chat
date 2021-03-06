class User < ApplicationRecord

  has_secure_password

  validates :email, uniqueness: { case_sensitive: false }, presence: true

  has_many :messages
end
