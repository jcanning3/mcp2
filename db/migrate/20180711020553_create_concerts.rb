class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :name
      t.datetime :startTime
      t.string :location

      t.timestamps
    end
  end
end
