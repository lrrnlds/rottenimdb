class Movie < ApplicationRecord
  has_many :reviews
  has_many :comments, as: :commentable
end
