class Event < ApplicationRecord
  belongs_to :type
  belongs_to :team
  belongs_to :location
end
