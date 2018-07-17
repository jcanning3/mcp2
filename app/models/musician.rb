class Musician < ApplicationRecord
  has_many :performers
  has_many :concerts, through: :performers
  has_many :pieces, through: :performers
  has_many :sheets, as: :pad, dependent: :destroy

  accepts_nested_attributes_for :sheets, allow_destroy: true,
    reject_if: ->(attrs) { attrs['note'].blank? }
end
