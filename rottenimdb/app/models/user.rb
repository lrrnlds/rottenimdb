class User < ApplicationRecord
  has_many :reviews
  has_many :comments
  validates :username, :email, uniqueness: true
  validates :username, :email, :password_digest, :first_name, :trusted, presence: true

  def password=(password)
   self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
   BCrypt::Password.new(self.password_digest) == password
  end

end
