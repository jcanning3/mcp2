class Team < ApplicationRecord
  has_many :event_teams
  has_many :team_musicians
  has_many :events, through: :event_teams
  has_many :musicians, through: :team_musicians
end
