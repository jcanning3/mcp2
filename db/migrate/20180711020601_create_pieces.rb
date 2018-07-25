class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :name
      t.references :composer, foreign_key: true
      t.integer :arranger
      t.string :opus
      t.integer :year_composed
      t.string :full_title

      t.timestamps
    end
  end
end
