class CreateSalesReports < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_reports do |t|
      t.datetime :date
      t.references :vendor, foreign_key: true
      t.datetime :concert
      t.references :ticket_category, foreign_key: true
      t.text :description
      t.integer :count
      t.integer :unit_price

      t.timestamps
    end
  end
end
