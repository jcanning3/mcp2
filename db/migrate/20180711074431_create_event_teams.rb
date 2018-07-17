class CreateEventTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :event_teams do |t|
      t.references :event, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
