class Festival < ApplicationRecord
  has_many :teams
  has_many :team_musicians, through: :teams
  has_many :musicians, through: :team_musicians
  has_many :events
  has_many :flights
  has_many :accomodations
  has_many :sales_reports
end
