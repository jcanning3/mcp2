class AddNotesToAccomodations < ActiveRecord::Migration[5.2]
  def change
    add_column :accomodations, :notes, :string
  end
end
