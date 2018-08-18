class TicketCategory < ApplicationRecord
  has_many :sales_reports, dependent: :destroy
end
