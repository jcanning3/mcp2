class Flight < ApplicationRecord
  belongs_to :musician
  belongs_to :airline
end
