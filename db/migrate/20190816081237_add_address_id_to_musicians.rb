class AddAddressIdToMusicians < ActiveRecord::Migration[5.2]
  def change
   add_reference :musicians, :address, foreign_key: true
  end
end
