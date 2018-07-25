=begin
class RemoveMusicianIdFromTeam < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :musician_id, :integer
  end
end
=end
