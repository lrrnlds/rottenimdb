class User < ApplicationRecord

  has_secure_password

  has_many :reviews
  has_many :comments
  validates :name, :email, uniqueness: true
  validates :name, :email, :password, presence: true

end
