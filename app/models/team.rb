class Team < ApplicationRecord
  has_many :event_teams
  has_many :events, through: :event_teams
end
