class SalesReport < ApplicationRecord
  belongs_to :vendor
  belongs_to :ticket_category
  belongs_to :payment_method
  belongs_to :festival
  belongs_to :event
end
