class User < ApplicationRecord
  has_many :scores
  has_many :users, through: :scores
  validates :username, uniqueness:true
  validates :password, length: {minimum: 8}
  validates :password, confirmation: true
  has_secure_password
end
