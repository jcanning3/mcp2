class Address < ApplicationRecord
  has_many :accomodations
  has_many :musicians, through: :accomodations
end
