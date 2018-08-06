class CreateTeamMusicians < ActiveRecord::Migration[5.2]
  def change
    create_table :team_musicians do |t|
      t.references :team, foreign_key: true
      t.references :musician, foreign_key: true

      t.timestamps
    end
  end
end
