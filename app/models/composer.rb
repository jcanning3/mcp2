class Composer < ApplicationRecord
  has_many :pieces
  has_many :performances, through: :pieces
end
