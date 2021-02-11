class User < ApplicationRecord
  has_many :gossips
  has_secure_password
end
