class AddInstrumentIdToTeamMusicians < ActiveRecord::Migration[5.2]
  def change
    add_column :team_musicians, :instrument_id, :integer
  end
end
