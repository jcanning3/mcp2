class TeamMusician < ApplicationRecord
  belongs_to :team
  belongs_to :musician
end
