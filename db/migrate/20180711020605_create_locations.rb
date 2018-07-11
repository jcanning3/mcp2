class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :nickname
      t.string :color

      t.timestamps
    end
  end
end
