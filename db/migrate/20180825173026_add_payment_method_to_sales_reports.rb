class AddPaymentMethodToSalesReports < ActiveRecord::Migration[5.2]
  def change
    add_reference :sales_reports, :payment_method, foreign_key: true
  end
end
