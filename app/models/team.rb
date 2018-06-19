class Team < ApplicationRecord
  has_many :likes
  has_many :posts
end
