class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.datetime :start
      t.datetime :end
      t.references :type, foreign_key: true
      t.references :team, foreign_key: true
      t.references :location, foreign_key: true
      t.string :notes
      t.string :color

      t.timestamps
    end
  end
end
