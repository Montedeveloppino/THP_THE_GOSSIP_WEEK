class User < ApplicationRecord
  has_many :gossips
  validates :email, presence: true, uniqueness: true

  has_secure_password
end
