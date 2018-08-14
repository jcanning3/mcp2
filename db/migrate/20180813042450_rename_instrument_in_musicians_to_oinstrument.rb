class RenameInstrumentInMusiciansToOinstrument < ActiveRecord::Migration[5.2]
  def change
    rename_column :musicians, :instrument, :old_instrument
  end
end
