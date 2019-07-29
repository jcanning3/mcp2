class AddFestivalIdToFlights < ActiveRecord::Migration[5.2]
  def change
    add_reference :flights, :festival, foreign_key: true
  end
end
