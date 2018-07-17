class RemoveEventIdFromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :event_id, :integer
  end
end
