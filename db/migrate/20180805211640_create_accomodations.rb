class CreateAccomodations < ActiveRecord::Migration[5.2]
  def change
    create_table :accomodations do |t|
      t.references :address, foreign_key: true
      t.references :musician, foreign_key: true
      t.datetime :arrival
      t.datetime :departure
      t.string :co

      t.timestamps
    end
  end
end
