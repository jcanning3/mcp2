class RemoveTeamIdFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :team_id, :integer
  end
end
