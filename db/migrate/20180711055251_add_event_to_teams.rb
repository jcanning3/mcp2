class AddEventToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :event_id, :integer, foreign_key: true
  end
end
