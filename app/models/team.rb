class Team < ApplicationRecord
  attr_accessor
  has_many :likes
  has_many :posts
end
