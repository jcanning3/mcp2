class AddFestivalIdToAccomodations < ActiveRecord::Migration[5.2]
  def change
    add_reference :accomodations, :festival, foreign_key: true
  end
end
