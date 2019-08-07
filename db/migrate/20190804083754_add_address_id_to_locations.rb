class AddAddressIdToLocations < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :address, foreign_key: true
  end
end
