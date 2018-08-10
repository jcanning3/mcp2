class Team < ApplicationRecord
  has_many :event_teams, dependent: :destroy
  has_many :team_musicians, dependent: :destroy
  has_many :events, through: :event_teams
  has_many :musicians, through: :team_musicians

  accepts_nested_attributes_for :team_musicians, allow_destroy: true,
    reject_if: ->(attrs) { attrs['musician_id'].blank? }

end
