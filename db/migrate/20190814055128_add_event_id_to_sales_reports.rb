class AddEventIdToSalesReports < ActiveRecord::Migration[5.2]
  def change
    add_reference :sales_reports, :event, foreign_key: true
  end
end
