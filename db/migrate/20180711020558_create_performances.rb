class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.references :concert, foreign_key: true
      #t.references :piece, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
