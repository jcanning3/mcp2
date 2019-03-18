class AddFestivalToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :festival_id, :integer, foreign_key: true
  end
end
