class Festival < ApplicationRecord
  has_many :teams
  has_many :team_musicians, through: :teams
  has_many :musicians, through: :team_musicians
  has_many :events
end
