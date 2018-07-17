class CreateSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :sheets do |t|
      t.text :note
      t.string :pad_id
      t.string :pad_type

      t.timestamps
    end
  end
end
