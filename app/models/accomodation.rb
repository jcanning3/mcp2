class Accomodation < ApplicationRecord
  belongs_to :address
  belongs_to :musician
  belongs_to :festival
end
