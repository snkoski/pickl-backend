class Post < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  # has_many :teams
  belongs_to :away_team, :class_name => "Team"
  belongs_to :home_team, :class_name => "Team"
end
