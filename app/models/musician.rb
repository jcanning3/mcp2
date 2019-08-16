class Musician < ApplicationRecord
  has_many :performers
  has_many :concerts, through: :performers
  has_many :pieces, through: :performers
  has_many :sheets, as: :pad, dependent: :destroy
  has_many :flights, dependent: :destroy
  has_many :accomodations, dependent: :destroy
  has_many :addresses, through: :accomodations
  has_many :team_musicians, dependent: :destroy
  has_many :teams, through: :team_musicians
  has_many :events, through: :teams
  belongs_to :instrument
  belongs_to :address

  accepts_nested_attributes_for :sheets, allow_destroy: true,
    reject_if: ->(attrs) { attrs['note'].blank? }

  accepts_nested_attributes_for :addresses, allow_destroy: true,
    reject_if: ->(attrs) { attrs['name'].blank? }

end
