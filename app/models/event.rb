class Event < ApplicationRecord
  belongs_to :type
  belongs_to :location
  has_many   :event_teams, dependent: :destroy
  has_many   :teams, through: :event_teams
  has_many   :sheets, as: :pad, dependent: :destroy

  accepts_nested_attributes_for :sheets, allow_destroy: true,
    reject_if: ->(attrs) { attrs['note'].blank? }

end
