class SalesReport < ApplicationRecord
  belongs_to :vendor
  belongs_to :ticket_category
end
