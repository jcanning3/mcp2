class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.text :name
      t.integer :order

      t.timestamps
    end
  end
end
