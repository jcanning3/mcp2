class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :musician, foreign_key: true
      t.references :airline, foreign_key: true
      t.string :flight
      t.string :from
      t.datetime :departure
      t.string :destination
      t.datetime :arrival
      t.text :notes

      t.timestamps
    end
  end
end
