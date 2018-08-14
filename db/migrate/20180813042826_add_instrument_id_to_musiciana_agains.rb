class AddInstrumentIdToMusicianaAgains < ActiveRecord::Migration[5.2]
  def change
    add_column :musicians, :instrument_id, :integer
  end
end
