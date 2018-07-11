class Performer < ApplicationRecord
  belongs_to :concert
  belongs_to :musician
  belongs_to :piece
end
