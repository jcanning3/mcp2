json.extract! sales_report, :id, :date, :vendor_id, :concert, :ticket_category_id, :description, :count, :unit_price, :created_at, :updated_at
json.url sales_report_url(sales_report, format: :json)
