class CreatePerformers < ActiveRecord::Migration[5.2]
  def change
    create_table :performers do |t|
      t.string :listing
      t.references :concert, foreign_key: true
      t.references :musician, foreign_key: true
      t.string :instrument
      t.integer :order
      #t.references :piece, foreign_key: true
      t.date :concert_date

      t.timestamps
    end
  end
end
