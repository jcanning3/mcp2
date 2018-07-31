class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.datetime :date
      t.string :color
      t.boolean :resolved

      t.timestamps
    end
  end
end
