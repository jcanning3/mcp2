class ChangePieceYearToString < ActiveRecord::Migration[5.2]
  def up
    change_column :pieces, :year_composed, :text
  end

  def down
    change_column :pieces, :year_composed, :integer
  end
end
