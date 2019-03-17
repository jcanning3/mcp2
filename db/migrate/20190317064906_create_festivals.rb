class CreateFestivals < ActiveRecord::Migration[5.2]
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :dates
      t.date :start
      t.date :end
      t.date :defaultStartDate
      t.date :defaultEndDate

      t.timestamps
    end
  end
end
