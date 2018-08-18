class Vendor < ApplicationRecord
    has_many :sales_reports, dependent: :destroy
end
