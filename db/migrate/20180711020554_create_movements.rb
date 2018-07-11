class CreateMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :movements do |t|
      t.string :name
      t.references :piece, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
