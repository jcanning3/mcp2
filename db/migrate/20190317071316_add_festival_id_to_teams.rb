class AddFestivalIdToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :festival_id, :integer, foreign_key: true
  end
end
