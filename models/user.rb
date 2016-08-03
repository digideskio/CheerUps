class User < ActiveRecord::Base
  has_secure_password
  has_many :cheerups
  has_many :likes
  has_many :liked_cheerup, through: :likes, source: :cheerup
end
