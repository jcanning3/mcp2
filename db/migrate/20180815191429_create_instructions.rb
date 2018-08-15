class CreateInstructions < ActiveRecord::Migration[5.2]
  def change
    create_table :instructions do |t|
      t.string :name
      t.references :task, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
