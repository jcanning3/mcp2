class CreateComposers < ActiveRecord::Migration[5.2]
  def change
    create_table :composers do |t|
      t.string :name
      t.string :nickname
      t.string :lifetime
      t.string :fullname
      t.string :notes

      t.timestamps
    end
  end
end
