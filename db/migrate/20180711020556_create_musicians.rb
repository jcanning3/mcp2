class CreateMusicians < ActiveRecord::Migration[5.2]
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :first
      t.string :last
      t.string :instrument
      t.string :notes

      t.timestamps
    end
  end
end
