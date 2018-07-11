class Piece < ApplicationRecord
  belongs_to :composer
  has_many :performances
  has_many :movements, dependent: :destroy, inverse_of: :piece
  has_many :performers
  has_many :musicians, through: :performers
  has_many :concerts, through: :performances

  accepts_nested_attributes_for :movements, allow_destroy: true,
    reject_if: ->(attrs) { attrs['name'].blank? || attrs['order'].blank? }
end
