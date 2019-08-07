class Location < ApplicationRecord
  belongs_to :address
  has_many :events
end
