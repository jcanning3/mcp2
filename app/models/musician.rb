class Musician < ApplicationRecord
  has_many :performers
  has_many :concerts, through: :performers
  has_many :pieces, through: :performers
  has_many :sheets, as: :pad, dependent: :destroy
  has_many :flights
  has_many :accomodations
  has_many :addresses, through: :accomodations
  has_many :team_musicians
  has_many :teams, through: :team_musicians

  accepts_nested_attributes_for :sheets, allow_destroy: true,
    reject_if: ->(attrs) { attrs['note'].blank? }
end
