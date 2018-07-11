class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :nickname
      t.references :musician, foreign_key: true
      t.string :color

      t.timestamps
    end
  end
end
