class AddFinalToSalesReports < ActiveRecord::Migration[5.2]
  def change
    add_column :sales_reports, :final, :boolean
    add_column :sales_reports, :quickbooks, :boolean
  end
end
